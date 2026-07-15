# Zynq_HW_Eurobot_2025
Ce dépôt contient les sources du projet Vivado *Zynq_HW_Eurobot* pour la partie **PL** du SoC Zynq7010.

Son rôle principal est d'assurer le filtrage des IOs avant leur communication au **PS**.

Le dépôt suit l'arborescence suivante : 
```text
|-- Zynq_HW_Eurobot_2025/
    |-- cons/              # Fichiers de contraintes (.xdc)
    |-- ip/                # IPs personnalisées et configuration d'IPs Xilinx
    |-- ivv_fpga_cocotb/   # Environnement de test Cocotb
    |-- rtl/               # Sources VHDL
    |-- rebuild.tcl        # Script de reconstruction du projet
```

## Prérequis
- Vivado 2020.2
- Python 3 : notre script de nettoyage pre commit l'utilise
- (Optionnel) Questa Sim (pour les simulations Cocotb)

> [!WARNING]
> Après avoir cloné ce dépôt sur ton PC, tu dois dire à Git d'utiliser nos scripts automatisés (les hooks) partagés avec l'équipe.
>
> Ouvre ton terminal Git (Git Bash sous Windows, ou le terminal Linux/Mac) à la racine de ce projet et exécute :
>
> ```bash
> git config core.hooksPath .githooks
> ```

## Mise en Place du Projet

La génération du projet est automatisée à l'aide du script `rebuild.tcl` ! Pour le générer : 

1. Ouvrir le **Vivado 2020.2 Tcl Shell** 
2. Naviguer jusqu'au dossier du dépôt.
3. Lancer la commande :  `vivado -source ./rebuild.tcl`
4. Une fois la génération terminée, le projet peut être ouvert via `project_1/project_1.xp`

Je n'ai pas ajouté Vivado à mon $PATH sous Windows, donc je lance la commande ci-dessus à l'aide de l'utilitaire `Vivado 2020.2 Tcl Shell`.

Mise à jour des submodules (VHDL_UART, VHDL_debounce):
1. Faire `git submodule init` puis `git submodule update`

## Mise à Jour du Projet
La gestion du projet est faite à l'aide du script `rebuild.tcl`. Dans le cas ou des sources sont ajoutées : nouveau fichier RTL, nouvelle IP, nouvelle simu RTL, il faut mettre à jour ce script.

### Etape 1 : 

Pour ce faire, depuis la `Tcl Console` de Vivado : 
- `set repo_root "[get_property directory [current_project]]/.."`
- `write_project_tcl -force -paths_relative_to [get_property directory [current_project]] ../rebuild.tcl`

Problème potentiel : Si le script ne se génère pas du tout au bon endroit (C:/AppData par exemple ...), il faut modifier le root du projet sur Vivado : 
- `Tools` -> `Settings...`
- `Project` -> `Default Project Directory` 
- Spécifier le chemin vers le répertoire `project_1/`

### Etape 2 : 


## Simulations Cocotb (Work In Progress)
Un exemple de banc de test utilisant **Cocotb** est disponible.

**!IMPORTANT** Actuellement, le setup repose sur Questa (Altera Starter Edition). Ce simulateur est très lourd et sa license est chiante à gérer ... Donc je pense passer sur un autre simulateur (GHDL ?) à terme.
## Export pour le Software
Après la génération du bitstream, il faut d'exporter le matériel : `File -> Export -> Export Hardware -> Include Bitstream` pour générer le fichier **.xsa** nécessaire au développement sur la partie **PS**.

#
#


#  Générateur de Mapping Matériel Vivado (Hardware Handoff)

Ce script Tcl (`generate_hw_report.tcl`) extrait automatiquement la configuration matérielle d'un projet Xilinx Vivado (Block Design et fichiers de contraintes) afin de générer un document Markdown lisible par les humains.

L'objectif est de fournir à l'équipe **Software/Firmware** un **Memory Map** toujours à jour ainsi qu'une vue claire du routage des périphériques, sans qu'elle ait besoin d'ouvrir Vivado.

## Fonctionnalités

Le script parcourt le design ouvert et génère un fichier `.md` contenant les sections suivantes :

1. **Memory Map (AXI)** : liste des périphériques, leurs adresses de base et leur taille.
2. **Configuration AXI GPIO** : largeur des bus, directions (Entrée / Sortie / Mixte) et nom des ports connectés.
3. **Configuration EMIO Zynq** : routage des signaux PS (*Processing System*) vers le PL (*Programmable Logic*), incluant les GPIO_I/O/T ainsi que les bus (SPI, I²C, CAN).
4. **Liste des ports externes (I/O)** : tableau récapitulatif de tous les ports du Block Design, croisés avec les **broches physiques (FPGA Pins)** lues dynamiquement depuis les fichiers `.xdc` du projet.

---

## Utilisation du script (mode graphique - GUI)

Si vous travaillez directement dans l'interface graphique de Vivado :

1. Ouvrez votre projet Vivado (`.xpr`).
2. Ouvrez votre Block Design (par exemple `design_1.bd`).
3. Dans la console Tcl située en bas de la fenêtre Vivado, sourcez le script :

```tcl
source chemin/vers/generate_hw_report.tcl
```

4. Exécutez ensuite la fonction en spécifiant le nom du fichier de sortie souhaité :

```tcl
export_hardware_map "hardware_map_software_team.md"
```

Le fichier `hardware_map_software_team.md` sera créé dans le répertoire courant de Vivado (généralement à la racine du projet ou dans le dossier d'exécution).