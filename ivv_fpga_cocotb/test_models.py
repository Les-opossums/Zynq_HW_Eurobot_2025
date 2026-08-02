"""
Tests unitaires purs Python des modeles de reference (models.py).

Ils ne necessitent AUCUN simulateur HDL et servent a garantir que la logique
de scoreboard des testbenches cocotb est correcte.

    pytest ivv_fpga_cocotb/test_models.py -v
"""

import models


# --------------------------------------------------------------------- UART
def test_uart_roundtrip_no_parity():
    for byte in (0x00, 0xFF, 0xA5, 0x5A, 0x01, 0x80, 0x42):
        frame = models.uart_encode(byte, parity="none")
        assert frame[0] == 0 and frame[-1] == 1          # start/stop
        assert len(frame) == 10                          # 1+8+1
        dec = models.uart_decode(frame, parity="none")
        assert dec["byte"] == byte
        assert dec["framing_ok"]
        assert dec["parity_ok"]


def test_uart_lsb_first():
    # 0x01 -> premier bit de donnee (d0) = 1, les autres = 0
    frame = models.uart_encode(0x01, parity="none")
    assert frame[1] == 1
    assert frame[2:9] == [0] * 7


def test_uart_parity_even_odd():
    assert models.uart_parity_bit(0x00, parity="even") == 0
    assert models.uart_parity_bit(0x01, parity="even") == 1
    assert models.uart_parity_bit(0x03, parity="even") == 0
    assert models.uart_parity_bit(0x01, parity="odd") == 0
    assert models.uart_parity_bit(0x00, parity="odd") == 1


def test_uart_roundtrip_with_parity():
    for parity in ("even", "odd"):
        for byte in (0x00, 0xFF, 0xA5, 0x42):
            frame = models.uart_encode(byte, parity=parity)
            assert len(frame) == 11                      # 1+8+parite+1
            dec = models.uart_decode(frame, parity=parity)
            assert dec["byte"] == byte and dec["parity_ok"]


def test_uart_framing_error_detected():
    frame = models.uart_encode(0xAA, parity="none")
    frame[-1] = 0                                        # stop bit invalide
    dec = models.uart_decode(frame, parity="none")
    assert not dec["framing_ok"]


# ------------------------------------------------------------------ WS2812B
def _make_ws_waveform(words, t0h, t0l, t1h, t1l, bits_per_word=24):
    """Genere un flux led_out synthetique (bit 0 en premier, LSB first)."""
    samples = []
    for w in words:
        for k in range(bits_per_word):
            if (w >> k) & 1:
                samples += [1] * t1h + [0] * t1l
            else:
                samples += [1] * t0h + [0] * t0l
    return samples


def test_ws2812b_decode_single_word():
    T0H, T0L, T1H, T1L = 26, 84, 84, 50
    thresh = (T0H + T1H) // 2
    color = 0x00FF00                                     # bit0 = 0
    samples = _make_ws_waveform([color], T0H, T0L, T1H, T1L)
    bits = models.ws2812b_decode(samples, high_thresh=thresh)
    words = models.ws2812b_group_words(bits)
    assert words == [color]


def test_ws2812b_decode_multiple_words():
    T0H, T0L, T1H, T1L = 26, 84, 84, 50
    thresh = (T0H + T1H) // 2
    colors = [0x123456, 0x0000FE, 0xABCDE0]              # tous bit0 = 0
    samples = _make_ws_waveform(colors, T0H, T0L, T1H, T1L)
    bits = models.ws2812b_decode(samples, high_thresh=thresh)
    words = models.ws2812b_group_words(bits)
    assert words == colors


def test_ws2812b_all_zero_and_all_one():
    T0H, T0L, T1H, T1L = 26, 84, 84, 50
    thresh = (T0H + T1H) // 2
    for color in (0x000000, 0xFFFFFE):                   # bit0 = 0
        samples = _make_ws_waveform([color], T0H, T0L, T1H, T1L)
        words = models.ws2812b_group_words(
            models.ws2812b_decode(samples, high_thresh=thresh)
        )
        assert words == [color]
