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

<div style="border-left: 4px solid #f32112; padding: 10px; background: #fff8e1;">
<strong>⚠️ Attention</strong><br><br>

Après avoir cloné ce dépôt sur ton PC, tu dois dire à Git d'utiliser nos scripts automatisés (les hooks) partagés avec l'équipe.

Ouvre ton terminal Git (Git Bash sous Windows, ou le terminal Linux/Mac) à la racine de ce projet et exécute cette commande :

<pre><code>git config core.hooksPath .githooks</code></pre>
</div>

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

###