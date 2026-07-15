# generate_hw_report_v3.tcl
proc export_hardware_map {output_filename} {
    set bd_name [current_bd_design -quiet]
    if {$bd_name eq ""} {
        puts "Erreur : Aucun Block Design n'est ouvert."
        return
    }

    set fp [open $output_filename w]
    puts $fp "# 📘 Mapping Matériel pour l'équipe Logicielle (Hardware Handoff)"
    puts $fp "Généré automatiquement depuis le projet Vivado.\n"

    # ---------------------------------------------------------
    # 0. Lecture dynamique des fichiers de contraintes (.XDC)
    # ---------------------------------------------------------
    array set phys_pins {}
    set xdc_files [get_files -quiet -filter {FILE_TYPE == XDC}]
    foreach xdc $xdc_files {
        if {[catch {set f_xdc [open $xdc r]} err]} continue
        while {[gets $f_xdc line] >= 0} {
            # Recherche de "PACKAGE_PIN Y9 [get_ports {MON_PORT}]"
            if {[regexp {PACKAGE_PIN\s+([A-Za-z0-9_]+)\s+\[get_ports\s+\{?([^\]\}]+)\}?\]} $line match pin port]} {
                set phys_pins($port) $pin
            }
        }
        close $f_xdc
    }

    # ---------------------------------------------------------
    # 1. Périphériques AXI (Memory Map) - CORRIGÉ
    # ---------------------------------------------------------
    puts $fp "## 1. 🗺️ Registres et Périphériques AXI (Memory Map)\n"
    puts $fp "| Périphérique (Instance) | Type d'IP | Adresse de Base | Taille |"
    puts $fp "|---|---|---|---|"
    
    set ps_cells [get_bd_cells -hierarchical -filter {VLNV=~"*processing_system7*"}]
    if {[llength $ps_cells] > 0} {
        set ps_cell [lindex $ps_cells 0]
        set addr_spaces [get_bd_addr_spaces -of_objects $ps_cell]
        
        foreach space $addr_spaces {
            set segs [get_bd_addr_segs -of_objects $space -quiet]
            foreach seg $segs {
                set offset [get_property OFFSET $seg -quiet]
                set range [get_property RANGE $seg -quiet]
                set path [get_property PATH $seg -quiet]
                
                # Si l'adresse est valide et assignée
                if {$offset ne "" && [string first "not_allocated" $offset] == -1} {
                    # Le path ressemble à /axi_gpio_0/S_AXI/Reg, on extrait "axi_gpio_0"
                    set path_parts [split $path "/"]
                    if {[llength $path_parts] > 1} {
                        set ip_name [lindex $path_parts 1]
                        set ip_cell [get_bd_cells -quiet "/$ip_name"]
                        
                        set ip_type_short "Inconnu"
                        if {$ip_cell ne ""} {
                            set vlnv [get_property VLNV $ip_cell]
                            set ip_type_short [lindex [split $vlnv ":"] 2]
                        }
                        puts $fp "| **$ip_name** | `$ip_type_short` | **$offset** | $range |"
                    }
                }
            }
        }
    }

    # ---------------------------------------------------------
    # 2. Configuration AXI GPIO
    # ---------------------------------------------------------
    puts $fp "\n## 2. ⚙️ Configuration des AXI GPIO\n"
    puts $fp "| Instance | Canal | Largeur | Direction | Connecté à (Ports externes) |"
    puts $fp "|---|---|---|---|---|"
    set gpios [get_bd_cells -hierarchical -filter {VLNV=~"*axi_gpio*"}]
    foreach gpio $gpios {
        set name [get_property NAME $gpio]
        set w1 [get_property CONFIG.C_GPIO_WIDTH $gpio]
        set in1 [get_property CONFIG.C_ALL_INPUTS $gpio]
        set out1 [get_property CONFIG.C_ALL_OUTPUTS $gpio]
        set dir1 "Mixte"
        if {$in1 == 1} { set dir1 "Entrée" }
        if {$out1 == 1} { set dir1 "Sortie" }
        
        set conn1 ""
        set pins1 [get_bd_pins -quiet -of_objects $gpio -filter {NAME=~"gpio_io_*"}]
        foreach p $pins1 {
            set net [get_bd_nets -quiet -of_objects $p]
            if {$net ne ""} {
                set e_ports [get_bd_ports -quiet -of_objects $net]
                foreach ep $e_ports { append conn1 "[get_property NAME $ep] " }
            }
        }
        if {$conn1 eq ""} { set conn1 "Réseau Interne (Passe par un bloc logique)" }
        puts $fp "| **$name** | 1 | $w1 bits | $dir1 | `$conn1` |"
    }

    # ---------------------------------------------------------
    # 3. Routage Zynq EMIO (Complet : Pins et Interfaces)
    # ---------------------------------------------------------
    puts $fp "\n## 3. 🔌 Configuration Zynq EMIO (Routage PS -> PL vers extérieur)\n"
    puts $fp "| Interface / Pin Zynq | Type de bus | Connecté au port externe |"
    puts $fp "|---|---|---|"
    if {[llength $ps_cells] > 0} {
        set ps_cell [lindex $ps_cells 0]
        
        # 3.A : Les Interfaces (SPI, CAN, Ethernet GMII...)
        set ps_intfs [get_bd_intf_pins -of_objects $ps_cell]
        foreach intf $ps_intfs {
            set intf_name [get_property NAME $intf]
            # On ignore les bus fixes (DDR et MIO) qui ne sont pas des EMIO
            if {$intf_name eq "DDR" || $intf_name eq "FIXED_IO"} { continue }
            
            set net [get_bd_intf_nets -quiet -of_objects $intf]
            if {$net ne ""} {
                set ext_ports [get_bd_intf_ports -quiet -of_objects $net]
                foreach ep $ext_ports {
                    puts $fp "| `$intf_name` | Interface EMIO | **[get_property NAME $ep]** |"
                }
            }
        }
        
        # 3.B : Les Pins simples (GPIO_I, GPIO_O, Horloges, etc.)
        set ps_pins [get_bd_pins -of_objects $ps_cell]
        foreach pin $ps_pins {
            set net [get_bd_nets -quiet -of_objects $pin]
            if {$net ne ""} {
                set ext_ports [get_bd_ports -quiet -of_objects $net]
                foreach ep $ext_ports {
                    puts $fp "| `[get_property NAME $pin]` | Broche (Pin) | **[get_property NAME $ep]** |"
                }
            }
        }
    }

    # ---------------------------------------------------------
    # 4. Liste des Ports Externes et Lien Physique (XDC)
    # ---------------------------------------------------------
    puts $fp "\n## 4. 🔗 Liste Globale des Ports Externes (I/O)\n"
    puts $fp "Tableau croisant les ports du Block Design avec les broches physiques extraites des fichiers de contraintes (`.xdc`).\n"
    puts $fp "| Nom du Port | Direction | Type | **Broche Physique (FPGA)** |"
    puts $fp "|---|---|---|---|"
    
    set ext_ports [get_bd_ports]
    foreach port $ext_ports {
        set name [get_property NAME $port]
        set dir [get_property DIR $port]
        set type [get_property TYPE $port]
        
        if {$dir eq "I"} {set dir "Entrée (Input)"}
        if {$dir eq "O"} {set dir "Sortie (Output)"}
        if {$dir eq "IO"} {set dir "Bidirectionnel (In/Out)"}
        
        # Récupération de la broche physique si trouvée dans le XDC
        set broche_physique "*Non trouvée*"
        if {[info exists phys_pins($name)]} {
            set broche_physique "**$phys_pins($name)**"
        }
        
        puts $fp "| **$name** | $dir | $type | $broche_physique |"
    }

    close $fp
    puts "\n==> Rapport V3 généré avec succès dans : $output_filename\n"
}