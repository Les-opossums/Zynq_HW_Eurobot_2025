#!/usr/bin/env python3
"""
Lance tous les bancs de test cocotb (unit_ivv_sc0XX_*.py) les uns apres les
autres, avec le simulateur choisi via la variable d'environnement SIM.

Exemples :
    SIM=ghdl  python ivv_fpga_cocotb/run_all.py
    SIM=questa python ivv_fpga_cocotb/run_all.py

Chaque test est execute dans un sous-processus isole ; le script renvoie un
code de sortie non nul si au moins un test echoue.
"""

import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent


def main() -> int:
    tests = sorted(HERE.glob("unit_ivv_sc*.py"))
    if not tests:
        print("Aucun test unit_ivv_sc*.py trouve.")
        return 1

    failures = []
    for test in tests:
        print(f"\n===== {test.name} =====", flush=True)
        result = subprocess.run([sys.executable, str(test)])
        if result.returncode != 0:
            failures.append(test.name)

    print("\n================ RESUME ================")
    for test in tests:
        status = "ECHEC" if test.name in failures else "OK"
        print(f"  {status:6} {test.name}")

    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
