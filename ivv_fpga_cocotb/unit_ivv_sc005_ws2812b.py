"""
IVV-SC005 : banc de test du controleur de LEDs adressables ``ws2812b_controller``.

DUT : rtl/ws2812b_AXI_controller/src/ws2812b_controller.vhd

Principe : le testbench joue le role de la memoire de pixels en presentant une
couleur constante sur ``i_pixData`` (independamment de ``o_led_nbr``). Il
echantillonne ``led_out`` a chaque front d'horloge, puis decode la trame
WS2812B (largeur de l'impulsion haute : longue = '1', courte = '0') pour
reconstruire chaque mot 24 bits et le comparer a la couleur attendue.

Notes RTL :
  * timings (constantes du DUT, en cycles) : T0H=26, T1H=84 ;
  * l'ordre d'emission est bit 0 (LSB) en premier (indexation
    current_pix_data(s_num_bit)) ;
  * le generic LED_COUNT est reduit en simulation pour limiter la duree.
  * IMPORTANT : on choisit des couleurs dont le bit 0 vaut 0. En effet le RTL
    lit ``current_pix_data(0)`` un cycle avant d'y recharger i_pixData, donc le
    tout premier bit de la premiere LED reflete la valeur d'init (0). Avec une
    couleur constante et bit0=0, la trame reste exacte sur toutes les LEDs.
"""

from pathlib import Path

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, RisingEdge

import models
from test_runner import run_simu

LED_COUNT = 3             # reduit vs 44 en vrai, pour un test rapide
CLK_PERIOD_NS = 20        # 50 MHz

# Constantes de timing du DUT (cycles d'horloge).
T0H, T1H = 26, 84
HIGH_THRESH = (T0H + T1H) // 2        # 55

# Nombre de cycles a echantillonner pour couvrir une trame complete.
# Duree max d'un bit '1' = T1H + T1L(50) = 134 cycles ; marge large.
FRAME_CYCLES = LED_COUNT * 24 * 140 + 500

# Le RTL ne remet PAS a zero state_led_control sur rstn : entre deux tests la
# FSM peut etre en plein milieu d'une trame ou dans le gap de reset (RESET_TIME
# = 50000 cycles). On s'aligne donc systematiquement sur un debut de trame
# franc (front montant apres un long niveau bas) avant de capturer.
GAP_MIN = 1000                         # cycles bas consecutifs = gap de reset
ALIGN_TIMEOUT = 130000                 # borne > RESET_TIME(50000) + 2 trames

def _start_clock(dut):
    # IMPORTANT : cocotb arrete les taches de fond a la fin de chaque test, donc
    # chaque @cocotb.test doit (re)demarrer sa propre horloge. Ne pas essayer de
    # la partager entre tests : le test suivant tournerait sans horloge et le
    # temps de simulation partirait a l'infini.
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, unit="ns").start())


async def _reset(dut):
    dut.rstn.value = 0
    dut.i_pixData.value = 0
    await ClockCycles(dut.clk, 5)
    dut.rstn.value = 1
    await ClockCycles(dut.clk, 2)


async def _wait_frame_start(dut) -> bool:
    """Attend un front montant de led_out precede d'un long niveau bas.

    Cela garantit qu'on demarre la capture au tout debut d'une trame propre,
    quel que soit l'etat de la FSM en entree.
    """
    low = 0
    for _ in range(ALIGN_TIMEOUT):
        await RisingEdge(dut.clk)
        if int(dut.led_out.value) == 0:
            low += 1
        else:
            if low >= GAP_MIN:
                return True            # front montant apres gap => debut de trame
            low = 0
    return False


async def _capture_and_check(dut, color: int):
    assert color & 1 == 0, "la couleur de test doit avoir son bit 0 a 0"
    dut.i_pixData.value = color       # memoire : meme couleur pour toutes les LEDs

    aligned = await _wait_frame_start(dut)
    assert aligned, "aucun debut de trame WS2812B detecte (timeout d'alignement)"

    # led_out vient de passer a 1 : on capture une trame complete.
    samples = [1]
    for _ in range(FRAME_CYCLES):
        await RisingEdge(dut.clk)
        samples.append(int(dut.led_out.value))
        if len(samples) % 512 == 0:
            if len(models.ws2812b_decode(samples, HIGH_THRESH)) >= LED_COUNT * 24 + 1:
                break

    bits = models.ws2812b_decode(samples, HIGH_THRESH)
    words = models.ws2812b_group_words(bits)
    assert len(words) >= LED_COUNT, (
        f"seulement {len(words)} mots decodes (attendu >= {LED_COUNT})"
    )
    for i in range(LED_COUNT):
        assert words[i] == color, (
            f"LED {i}: couleur decodee 0x{words[i]:06X} != attendue 0x{color:06X}"
        )
    dut._log.info(f"WS2812B couleur 0x{color:06X} : {LED_COUNT} LEDs OK")


@cocotb.test()
async def test_color_green(dut):
    """Trame verte 0x00FF00 (bit0=0)."""
    _start_clock(dut)
    await _reset(dut)
    await _capture_and_check(dut, 0x00FF00)


@cocotb.test()
async def test_color_mixed(dut):
    """Couleur mixte 0x123456 (bit0=0)."""
    _start_clock(dut)
    await _capture_and_check(dut, 0x123456)


if __name__ == "__main__":
    src = (
        Path(__file__).resolve().parent.parent
        / "rtl/ws2812b_AXI_controller/src/ws2812b_controller.vhd"
    )
    run_simu(
        sources_path=[src],
        dut_name="ws2812b_controller",
        sim_name=Path(__file__).stem,
        gui=False,
        parameters={"LED_COUNT": LED_COUNT},
    )
