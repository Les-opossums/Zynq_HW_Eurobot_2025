"""
IVV-SC003 : banc de test de l'emetteur ``UART_TX``.

DUT : rtl/VHDL_UART/src/UART/uart_tx.vhd (+ uart_clk_div, uart_parity)

Principe : on presente un octet a transmettre, on capture la ligne serie
UART_TXD et on la decode (modele de reference models.uart_decode) pour verifier
que l'octet emis correspond bien a l'octet demande, avec bit de start/stop
corrects.

Configuration : PARITY_BIT="none" (defaut), CLK_DIV_VAL=16.
Avec UART_CLK_EN maintenu a '1', chaque bit dure exactement 16 cycles CLK.
"""

from pathlib import Path

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, FallingEdge

import models
from test_runner import run_simu

CLK_DIV_VAL = 16          # doit correspondre au generic CLK_DIV_VAL du DUT
CLK_PERIOD_NS = 20        # 50 MHz


async def _reset(dut):
    """RST est actif bas dans ce module : RST=0 => reset, RST=1 => marche."""
    dut.UART_CLK_EN.value = 1         # active en permanence l'oversampling
    dut.DIN.value = 0
    dut.DIN_VLD.value = 0
    dut.RST.value = 0
    await ClockCycles(dut.CLK, 5)
    dut.RST.value = 1
    await ClockCycles(dut.CLK, 2)


async def _send_and_check(dut, byte: int):
    """Transmet un octet et verifie la trame serie capturee."""
    dut.DIN.value = byte
    dut.DIN_VLD.value = 1

    # Le start bit fait tomber la ligne (au repos a '1').
    await FallingEdge(dut.UART_TXD)
    dut.DIN_VLD.value = 0             # un seul octet

    # Echantillonnage au centre de chaque bit (start + 8 data + stop).
    await ClockCycles(dut.CLK, CLK_DIV_VAL // 2)   # centre du start bit
    frame = [int(dut.UART_TXD.value)]
    for _ in range(9):
        await ClockCycles(dut.CLK, CLK_DIV_VAL)
        frame.append(int(dut.UART_TXD.value))

    dec = models.uart_decode(frame, parity="none")
    assert dec["framing_ok"], f"start/stop invalides pour 0x{byte:02X}: {frame}"
    assert dec["byte"] == byte, (
        f"octet emis 0x{dec['byte']:02X} != attendu 0x{byte:02X} (frame={frame})"
    )

    # Laisse la ligne revenir au repos avant l'octet suivant.
    await ClockCycles(dut.CLK, 2 * CLK_DIV_VAL)
    dut._log.info(f"TX 0x{byte:02X} OK")


@cocotb.test()
async def test_uart_tx_bytes(dut):
    """Transmet une serie d'octets representatifs et verifie chacun."""
    cocotb.start_soon(Clock(dut.CLK, CLK_PERIOD_NS, unit="ns").start())
    await _reset(dut)

    for byte in (0x00, 0xFF, 0xA5, 0x5A, 0x01, 0x80, 0x42, 0x7E):
        await _send_and_check(dut, byte)


if __name__ == "__main__":
    base = Path(__file__).resolve().parent.parent / "rtl/VHDL_UART/src/UART"
    sources = [
        base / "uart_clk_div.vhd",
        base / "uart_parity.vhd",
        base / "uart_tx.vhd",
    ]
    run_simu(
        sources_path=sources,
        dut_name="UART_TX",
        sim_name=Path(__file__).stem,
        gui=False,
    )
