import os
from pathlib import Path
import cocotb
import cocotb_tools.runner

# TODO: enable simulation restart without leaving Questa
def run_simu(gui : bool, sources_path : list, dut_name : str, sim_name : str):
    """
    Run a cocotb simulation using the selected HDL simulator.

    :param bool gui: Enable or disable the simulator GUI.
    :param list sources_path: List of HDL source file paths to compile.
    :param str dut_name: Name of the top-level HDL design under test.
    :param str sim_name: Name of the simulation instance (used for build directory and to find tests).
    :return: None
    :rtype: None
    """
    sim = os.getenv("SIM", "questa")
    sources = sources_path

    my_runner = cocotb_tools.runner.get_runner(sim)
    
    # Create a build_dir for the current simulation
    build_dir = f"./ivv_fpga_cocotb/.build/{sim_name}" 

    my_runner.build(
        hdl_library="design",
        sources=sources,
        build_dir=build_dir,
        hdl_toplevel=dut_name,
    )

    my_runner.test(hdl_toplevel=dut_name,
                   test_module=sim_name,
                   hdl_toplevel_library="design",
                   build_dir=build_dir,                   
                   gui=gui,                   
                   test_args=[
                              "-voptargs=+acc=rnb",   
                              "-do", "../../run.do"                           
                            ]
                  )