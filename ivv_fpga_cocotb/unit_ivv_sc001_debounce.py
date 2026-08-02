"""
IVV-SC001 : banc de test auto-verifiant du filtre anti-rebond ``debounce_filter``.

DUT : rtl/VHDL_debounce/src/debounce.vhd

Comportement RTL verifie :
  * reset asynchrone actif bas (rst_n = 0)  -> btn_filtered = 0 ;
  * une impulsion plus courte que DEBOUNCE_TIME est rejetee ;
  * un niveau stable pendant >= DEBOUNCE_TIME cycles est propage ;
  * des rebonds rapides (toggles) ne font jamais basculer la sortie ;
  * apres stabilisation, le relachement est lui aussi filtre.

La constante DEBOUNCE_TIME (20 ms @100 MHz en vrai) est surchargee par un
generic a une petite valeur en simulation pour garder le test rapide.
"""

from pathlib import Path

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, FallingEdge

from test_runner import run_simu

# Valeur reduite de DEBOUNCE_TIME utilisee en simulation (cycles d'horloge).
DEBOUNCE_TIME = 16
CLK_PERIOD_NS = 10  # 100 MHz


def _f(dut) -> int:
    """Lecture entiere de la sortie filtree."""
    return int(dut.btn_filtered.value)


async def _reset(dut):
    """Applique un reset asynchrone actif bas."""
    dut.btn_raw.value = 0
    dut.rst_n.value = 0
    await ClockCycles(dut.clk, 3)
    await FallingEdge(dut.clk)
    dut.rst_n.value = 1
    await ClockCycles(dut.clk, 2)


@cocotb.test()
async def test_reset(dut):
    """Apres reset, la sortie doit etre a 0."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, unit="ns").start())
    await _reset(dut)
    assert _f(dut) == 0, "btn_filtered doit valoir 0 apres reset"
    dut._log.info("test_reset OK")


@cocotb.test()
async def test_glitch_rejected(dut):
    """Une impulsion trop courte (< DEBOUNCE_TIME) ne doit pas passer."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, unit="ns").start())
    await _reset(dut)

    dut.btn_raw.value = 1
    await ClockCycles(dut.clk, DEBOUNCE_TIME // 2)  # trop court
    dut.btn_raw.value = 0
    await ClockCycles(dut.clk, DEBOUNCE_TIME + 5)

    assert _f(dut) == 0, "un glitch court ne doit pas etre propage"
    dut._log.info("test_glitch_rejected OK")


@cocotb.test()
async def test_stable_press(dut):
    """Un appui stable >= DEBOUNCE_TIME doit etre propage."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, unit="ns").start())
    await _reset(dut)

    dut.btn_raw.value = 1
    # marge : DEBOUNCE_TIME increments + quelques cycles de latence FSM
    await ClockCycles(dut.clk, DEBOUNCE_TIME + 6)

    assert _f(dut) == 1, "un appui stable doit faire passer btn_filtered a 1"
    dut._log.info("test_stable_press OK")


@cocotb.test()
async def test_stable_release(dut):
    """Apres un appui stable, un relachement stable revient a 0."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, unit="ns").start())
    await _reset(dut)

    dut.btn_raw.value = 1
    await ClockCycles(dut.clk, DEBOUNCE_TIME + 6)
    assert _f(dut) == 1

    dut.btn_raw.value = 0
    await ClockCycles(dut.clk, DEBOUNCE_TIME + 6)
    assert _f(dut) == 0, "un relachement stable doit ramener btn_filtered a 0"
    dut._log.info("test_stable_release OK")


@cocotb.test()
async def test_bounce_then_stable(dut):
    """Des rebonds rapides sont rejetes, puis un niveau stable est accepte."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, unit="ns").start())
    await _reset(dut)

    # Rebonds : toggles plus rapides que DEBOUNCE_TIME -> le compteur se remet
    # a zero en permanence, la sortie ne doit jamais basculer.
    for _ in range(8):
        dut.btn_raw.value = 1
        await ClockCycles(dut.clk, DEBOUNCE_TIME // 4)
        dut.btn_raw.value = 0
        await ClockCycles(dut.clk, DEBOUNCE_TIME // 4)
    assert _f(dut) == 0, "les rebonds ne doivent pas faire basculer la sortie"

    # Puis niveau franc et stable.
    dut.btn_raw.value = 1
    await ClockCycles(dut.clk, DEBOUNCE_TIME + 6)
    assert _f(dut) == 1, "apres les rebonds, l'appui stable doit passer"
    dut._log.info("test_bounce_then_stable OK")


if __name__ == "__main__":
    src = Path(__file__).resolve().parent.parent / "rtl/VHDL_debounce/src/debounce.vhd"
    run_simu(
        sources_path=[src],
        dut_name="debounce_filter",
        sim_name=Path(__file__).stem,
        gui=False,
        parameters={"DEBOUNCE_TIME": DEBOUNCE_TIME},
    )
