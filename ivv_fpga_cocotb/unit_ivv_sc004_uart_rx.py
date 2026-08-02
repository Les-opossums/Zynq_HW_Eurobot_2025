"""
IVV-SC004 : banc de test du recepteur ``UART_RX``.

DUT : rtl/VHDL_UART/src/UART/uart_rx.vhd (+ uart_clk_div, uart_parity)

Principe : le testbench genere une trame serie (start + 8 data LSB first + stop)
sur UART_RXD, chaque bit maintenu 16 cycles CLK (CLK_DIV_VAL=16, UART_CLK_EN=1),
puis verifie que DOUT/DOUT_VLD restituent l'octet, et que FRAME_ERROR se leve
sur un stop bit invalide.
"""

from pathlib import Path

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, RisingEdge

import models
from test_runner import run_simu

CLK_DIV_VAL = 16
CLK_PERIOD_NS = 20        # 50 MHz


async def _reset(dut):
    """RST actif bas : RST=0 => reset, RST=1 => marche."""
    dut.UART_CLK_EN.value = 1
    dut.UART_RXD.value = 1            # ligne au repos
    dut.RST.value = 0
    await ClockCycles(dut.CLK, 5)
    dut.RST.value = 1
    await ClockCycles(dut.CLK, 4)


async def _drive_bit(dut, level: int):
    dut.UART_RXD.value = level
    await ClockCycles(dut.CLK, CLK_DIV_VAL)


async def _drive_and_capture(dut, byte: int, bad_stop: bool = False):
    """Emet une trame vers le DUT et capture DOUT_VLD/FRAME_ERROR.

    :returns: (dout ou None, frame_error_vu)
    """
    frame = models.uart_encode(byte, parity="none")   # [start, d0..d7, stop]
    if bad_stop:
        frame[-1] = 0                                 # corrompt le stop bit

    captured = {"dout": None, "frame_err": False}

    async def monitor():
        # Surveille pendant toute la trame + marge.
        for _ in range((len(frame) + 3) * CLK_DIV_VAL):
            await RisingEdge(dut.CLK)
            if int(dut.DOUT_VLD.value) == 1:
                captured["dout"] = int(dut.DOUT.value)
            if int(dut.FRAME_ERROR.value) == 1:
                captured["frame_err"] = True

    mon = cocotb.start_soon(monitor())
    for level in frame:
        await _drive_bit(dut, level)
    dut.UART_RXD.value = 1                             # retour au repos
    await ClockCycles(dut.CLK, 2 * CLK_DIV_VAL)
    await mon
    return captured["dout"], captured["frame_err"]


@cocotb.test()
async def test_uart_rx_bytes(dut):
    """Recoit une serie d'octets et verifie DOUT/DOUT_VLD."""
    cocotb.start_soon(Clock(dut.CLK, CLK_PERIOD_NS, unit="ns").start())
    await _reset(dut)

    for byte in (0x00, 0xFF, 0xA5, 0x5A, 0x01, 0x80, 0x42, 0x7E):
        dout, frame_err = await _drive_and_capture(dut, byte)
        assert not frame_err, f"FRAME_ERROR inattendu pour 0x{byte:02X}"
        assert dout == byte, (
            f"octet recu {dout} != attendu 0x{byte:02X}"
        )
        dut._log.info(f"RX 0x{byte:02X} OK")


@cocotb.test()
async def test_uart_rx_framing_error(dut):
    """Un stop bit invalide doit lever FRAME_ERROR et non DOUT_VLD."""
    cocotb.start_soon(Clock(dut.CLK, CLK_PERIOD_NS, unit="ns").start())
    await _reset(dut)

    dout, frame_err = await _drive_and_capture(dut, 0xA5, bad_stop=True)
    assert frame_err, "FRAME_ERROR aurait du se lever sur stop bit invalide"
    dut._log.info("test_uart_rx_framing_error OK")


if __name__ == "__main__":
    base = Path(__file__).resolve().parent.parent / "rtl/VHDL_UART/src/UART"
    sources = [
        base / "uart_clk_div.vhd",
        base / "uart_parity.vhd",
        base / "uart_rx.vhd",
    ]
    run_simu(
        sources_path=sources,
        dut_name="UART_RX",
        sim_name=Path(__file__).stem,
        gui=False,
    )
