"""
IVV-SC002 : banc de test du buffer half-duplex tri-state ``uart_half_duplex_io``.

DUT : rtl/tri_state/src/tri_state.vhd  (purement combinatoire, pas d'horloge)

Regles verifiees :
  * DIR = '1' (emission) : la ligne UART_IO est pilotee par TX,
    RX recopie la ligne, DIR_o = DIR ;
  * DIR = '0' (reception) : le DUT relache UART_IO (haute impedance 'Z'),
    le testbench pilote la ligne et RX doit recopier cette valeur.
"""

from pathlib import Path

import cocotb
from cocotb.triggers import Timer
from cocotb.types import Logic

from test_runner import run_simu

HI_Z = Logic("Z")


def _c(sig) -> str:
    """Retourne le niveau logique sous forme de caractere ('0','1','z',...)."""
    return str(sig.value).lower()


async def _settle():
    await Timer(1, unit="ns")


@cocotb.test()
async def test_transmit_mode(dut):
    """DIR=1 : UART_IO = TX, RX = TX, DIR_o = 1."""
    # En emission, le DUT pilote seul la ligne : le TB ne depose RIEN sur
    # UART_IO (un depot cocotb masquerait le driver du DUT et on lirait 'Z').
    dut.DIR.value = 1
    for tx in (0, 1, 0, 1):
        dut.TX.value = tx
        await _settle()
        assert _c(dut.UART_IO) == str(tx), f"UART_IO devrait valoir {tx}"
        assert _c(dut.RX) == str(tx), f"RX devrait recopier TX={tx}"
        assert _c(dut.DIR_o) == "1", "DIR_o doit suivre DIR"
    dut._log.info("test_transmit_mode OK")


@cocotb.test()
async def test_receive_mode(dut):
    """DIR=0 : le DUT relache la ligne, RX recopie la valeur imposee par le TB."""
    dut.DIR.value = 0
    dut.TX.value = 1                  # ne doit pas influencer la ligne
    for line in (0, 1, 0, 1):
        dut.UART_IO.value = line     # le TB pilote la ligne
        await _settle()
        assert _c(dut.RX) == str(line), f"RX devrait recopier la ligne={line}"
        assert _c(dut.DIR_o) == "0", "DIR_o doit suivre DIR"
    dut._log.info("test_receive_mode OK")


@cocotb.test()
async def test_high_impedance(dut):
    """DIR=0 : sans driver externe, UART_IO doit etre en haute impedance."""
    dut.DIR.value = 0
    dut.TX.value = 1
    dut.UART_IO.value = HI_Z         # personne ne conduit -> resolution 'Z'
    await _settle()
    assert _c(dut.UART_IO) == "z", "UART_IO doit etre 'Z' en mode reception"
    dut._log.info("test_high_impedance OK")


if __name__ == "__main__":
    src = Path(__file__).resolve().parent.parent / "rtl/tri_state/src/tri_state.vhd"
    run_simu(
        sources_path=[src],
        dut_name="uart_half_duplex_io",
        sim_name=Path(__file__).stem,
        gui=False,
    )
