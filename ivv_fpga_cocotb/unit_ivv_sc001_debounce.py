import cocotb
from cocotb.triggers import Timer
import cocotb.triggers
from pathlib import Path
from test_runner import run_simu

# CLOCK coroutine
async def generate_clock(dut):
    while(1):
        dut.clk.value = 0
        await Timer(5, unit="ns") 
        dut.clk.value = 1
        await Timer(5, unit="ns")

# TODO: add automated verifications
@cocotb.test()
async def test1(dut):

    dut._log.info("Start of Simulation !")
    dut.rst_n.value = 1
    dut.btn_raw.value = 0
    cocotb.start_soon(generate_clock(dut))
    await Timer(1, unit='us')

    # RST the design (with an active low sync reset : not necessary in our case but it is to showcase how it's done)
    await cocotb.triggers.FallingEdge(dut.CLK)  # wait for falling edge
    dut.rst_n.value = 0
    await cocotb.triggers.FallingEdge(dut.CLK)
    dut.rst_n.value = 1
    
    await Timer(10, unit="us")

    dut._log.info("Activation of button for 2 us !")
    dut.btn_raw.value = 1
    await Timer(2, "us")

    dut._log.info("End of test1")


if __name__ == "__main__":
    proj_path = Path(__file__).resolve()
    proj_path = proj_path.parent.parent /'rtl/VHDL_debounce/src/debounce.vhd'
    sim_name = Path(__file__).stem 

    run_simu(gui = True, sources_path=[proj_path], dut_name='debounce_filter', sim_name=sim_name)