"""
Modeles de reference ("golden models") purs Python, independants de cocotb.

Ils encapsulent la logique de scoreboard partagee par les bancs de test et
peuvent etre valides seuls (sans simulateur HDL) via ``test_models.py`` :

    pytest ivv_fpga_cocotb/test_models.py

Cela permet de garantir que la partie verification des testbenches est correcte
avant meme de lancer une simulation RTL.
"""

from __future__ import annotations

from typing import List


# =====================================================================
#  UART
# =====================================================================
def uart_parity_bit(byte: int, n_data: int = 8, parity: str = "none") -> int | None:
    """Calcule le bit de parite attendu pour un octet.

    Reproduit le comportement de ``UART_PARITY`` du depot VHDL_UART.

    :returns: 0/1, ou ``None`` si ``parity == "none"``.
    """
    bits = [(byte >> i) & 1 for i in range(n_data)]
    ones = sum(bits)
    if parity == "none":
        return None
    if parity == "even":
        return ones & 1                 # rend le nombre total de '1' pair
    if parity == "odd":
        return (ones & 1) ^ 1           # rend le nombre total de '1' impair
    if parity == "mark":
        return 1
    if parity == "space":
        return 0
    raise ValueError(f"parite inconnue: {parity!r}")


def uart_encode(byte: int, n_data: int = 8, parity: str = "none") -> List[int]:
    """Serialise un octet en une liste de niveaux logiques (LSB first).

    Ordre : start(0), d0, d1, ... d7, [parite], stop(1).
    C'est exactement l'ordre emis/attendu par UART_TX / UART_RX.
    """
    frame = [0]  # start bit
    frame += [(byte >> i) & 1 for i in range(n_data)]
    p = uart_parity_bit(byte, n_data, parity)
    if p is not None:
        frame.append(p)
    frame.append(1)  # stop bit
    return frame


def uart_decode(
    frame: List[int], n_data: int = 8, parity: str = "none"
) -> dict:
    """Reconstruit un octet a partir d'une trame serie echantillonnee.

    :param frame: niveaux [start, d0..d(n-1), [parite], stop].
    :returns: dict {byte, parity_ok, framing_ok}.
    """
    idx = 0
    start = frame[idx]; idx += 1
    data = 0
    for i in range(n_data):
        data |= (frame[idx] & 1) << i
        idx += 1
    parity_ok = True
    if parity != "none":
        expected = uart_parity_bit(data, n_data, parity)
        parity_ok = (frame[idx] == expected)
        idx += 1
    stop = frame[idx]
    return {
        "byte": data,
        "framing_ok": (start == 0 and stop == 1),
        "parity_ok": parity_ok,
    }


# =====================================================================
#  WS2812B
# =====================================================================
def ws2812b_decode(
    samples: List[int],
    high_thresh: int,
) -> List[int]:
    """Decode un flux WS2812B en une liste de bits.

    Chaque bit du protocole WS2812B est une impulsion haute suivie d'une
    impulsion basse ; c'est la *duree du niveau haut* qui distingue un '0'
    (court, T0H) d'un '1' (long, T1H).

    :param samples:     niveaux de ``led_out`` echantillonnes a chaque front
                        montant d'horloge.
    :param high_thresh: seuil (en nombre d'echantillons) au-dela duquel une
                        impulsion haute est interpretee comme un '1'.
                        Typiquement (T0H + T1H) / 2.
    :returns: liste de bits dans l'ordre d'emission (bit 0 en premier).
    """
    bits: List[int] = []
    i, n = 0, len(samples)
    while i < n:
        if samples[i] == 1:
            j = i
            while j < n and samples[j] == 1:
                j += 1
            high_len = j - i
            bits.append(1 if high_len >= high_thresh else 0)
            i = j
        else:
            i += 1
    return bits


def ws2812b_group_words(bits: List[int], bits_per_word: int = 24) -> List[int]:
    """Regroupe une liste de bits (bit 0 en premier) en mots entiers.

    Reproduit l'indexation ``current_pix_data(s_num_bit)`` du RTL : le premier
    bit emis correspond au bit 0 (LSB) du mot 24 bits.
    """
    words: List[int] = []
    for start in range(0, len(bits) - bits_per_word + 1, bits_per_word):
        chunk = bits[start:start + bits_per_word]
        word = 0
        for k, b in enumerate(chunk):
            word |= (b & 1) << k
        words.append(word)
    return words
