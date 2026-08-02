"""
Runner cocotb multi-simulateur pour le projet Zynq_HW_Eurobot_2025.

Ce module fournit une fonction unique :func:`run_simu` utilisee par tous les
bancs de test unitaires (`unit_ivv_sc0XX_*.py`).

Le simulateur est choisi via la variable d'environnement ``SIM`` :

* ``SIM=questa`` (defaut historique) -> Questa/ModelSim (license Altera Starter)
* ``SIM=ghdl``                       -> GHDL (libre, cible privilegiee a terme)
* ``SIM=nvc``                        -> NVC (autre simulateur VHDL libre)

Exemples
--------
Lancer un test en ligne de commande (sans GUI) avec GHDL::

    SIM=ghdl python ivv_fpga_cocotb/unit_ivv_sc001_debounce.py

Lancer avec Questa et l'interface graphique (comportement par defaut du
fichier de test lui-meme, cf. l'argument ``gui``).
"""

import os
from pathlib import Path

import cocotb_tools.runner

# Racine du depot (…/Zynq_HW_Eurobot_2025)
REPO_ROOT = Path(__file__).resolve().parent.parent


def _ghdl_std(vhdl_std: str) -> str:
    """Convertit un standard VHDL vers la syntaxe attendue par GHDL (08, 93…)."""
    return {"1993": "93", "1993c": "93c", "2002": "02", "2008": "08"}.get(
        vhdl_std, "08"
    )


def run_simu(
    sources_path: list,
    dut_name: str,
    sim_name: str,
    gui: bool = False,
    parameters: dict | None = None,
    vhdl_std: str = "2008",
    hdl_library: str = "design",
    waves: bool = True,
):
    """Compile puis execute une simulation cocotb.

    :param list  sources_path: Liste des fichiers HDL a compiler (chemins).
    :param str   dut_name:     Nom de l'entite/top-level a tester.
    :param str   sim_name:     Nom du module de test Python (= nom du fichier
                               sans extension) ; sert aussi de nom de build_dir.
    :param bool  gui:          Ouvre la GUI du simulateur (Questa uniquement).
    :param dict  parameters:   Generics VHDL a surcharger (ex. {"DEBOUNCE_TIME": 20}).
    :param str   vhdl_std:     Standard VHDL ("1993", "2008", ...).
    :param str   hdl_library:  Nom de la bibliotheque de compilation.
    :param bool  waves:        Active le dump des formes d'onde.
    """
    sim = os.getenv("SIM", "questa").lower()
    parameters = parameters or {}

    runner = cocotb_tools.runner.get_runner(sim)

    # Un build_dir distinct par (simulateur, test) pour eviter les collisions.
    build_dir = REPO_ROOT / "ivv_fpga_cocotb" / ".build" / sim / sim_name

    # GHDL normalise les identifiants VHDL en minuscules ; cocotb doit donc
    # chercher le "root handle" en minuscules, sinon : "Couldn't find root
    # handle UART_TX (UART_TX != uart_tx)".
    toplevel = dut_name.lower() if sim == "ghdl" else dut_name

    # --- Arguments de compilation propres a chaque simulateur --------------
    build_args: list[str] = []
    if sim == "ghdl":
        build_args += [f"--std={_ghdl_std(vhdl_std)}", "-frelaxed"]
    elif sim == "nvc":
        build_args += [f"--std={vhdl_std}"]
    elif sim == "questa" and vhdl_std == "2008":
        build_args += ["-2008"]

    runner.build(
        hdl_library=hdl_library,
        sources=sources_path,
        hdl_toplevel=toplevel,
        build_dir=str(build_dir),
        build_args=build_args,
        parameters=parameters,
        always=True,
    )

    # --- Arguments d'execution propres a chaque simulateur ----------------
    test_args: list[str] = []
    if sim == "ghdl":
        # IMPORTANT : le runner cocotb ne repasse pas --std a `ghdl -r`.
        # Sans lui, GHDL cherche la bibliotheque par defaut (obj93) alors que
        # la compilation a produit obj08 -> "cannot find entity". On force donc
        # le meme standard a l'elaboration/execution.
        test_args += [f"--std={_ghdl_std(vhdl_std)}"]
    elif sim == "questa":
        # Conserve l'acces aux signaux + charge le script d'affichage.
        run_do = REPO_ROOT / "ivv_fpga_cocotb" / "run.do"
        test_args += ["-voptargs=+acc=rnb", "-do", str(run_do)]

    runner.test(
        hdl_toplevel=toplevel,
        hdl_toplevel_library=hdl_library,
        test_module=sim_name,
        build_dir=str(build_dir),
        parameters=parameters,
        gui=gui,
        waves=waves,
        test_args=test_args,
    )
