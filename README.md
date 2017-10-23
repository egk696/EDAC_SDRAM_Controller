# EDAC SDRAM Controller

This repository hosts the developed code that implements the proposed SEU mitigation technique presented in:

_E.Kyriakakis, K. Ngo and J.Öberg, "Mitigating Single-Event Upsets in COTS SDRAM using an EDAC SDRAM Controller", In proceeedings of NORCAS-2017, Linköping, Sweden._

## Structure

* Altera: hosts a demo project that implements the controller on a Cyclone IV DE2-115 target board
* Xilinx: hosts a demo project that implements the controller for an Artix-7 200T FPGA
* ModelSim: hosts wave configurations for easier simulation
* blaze_src: hosts demo software project for the MicroBlaze soft-core processor that evaluates the functionality of the SDRAM Controller
* nios2_src: hosts demo software project for the NIOSII soft-core processor that evaluates the functionality of the SDRAM Controller
*	controller_src: is the main VHDL codebase for the developed controller component
* other_src: is a VHDL codebase for any other developed components used in the demo projects
