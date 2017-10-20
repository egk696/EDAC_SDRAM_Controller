# EDAC SDRAM Controller

This repository hosts the code developed that implementes the proposed TMR mitigation technique along with the presented SDRAM Controller in [1]

## Structure

* Altera: hosts a demo project that implements the controller on a Cyclone IV DE2-115 target board
* Xilinx: hosts a demo project that implements the controller for an Artix-7 200T FPGA
* ModelSim: hosts wave configurations for easier simulation
* blaze_src: hosts demo software project for the MicroBlaze soft-core processor that evaluates the functionality of the SDRAM Controller
* nios2_src: hosts demo software project for the NIOSII soft-core processor that evaluates the functionality of the SDRAM Controller
*	controller_src: is the main VHDL codebase for the developed controller component
* other_src: is a VHDL codebase for any other developed components used in the demo projects
