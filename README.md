### DE10 FPGA Project

TODO: Find where inferred latch directives get reported (i.e. Make one and see)

##### Code Design
1. Using VS Code IDE for making System Verilog files
2. In the name of the project (Quartus Lite) tweak the project settings for SystemVerilog RTL code

##### RTL Simulation
1. Install the Questa Intel GUI
    a. Run .run file for Questa within the Quartis Lite
    b. `./QuestaSetup-23.1std.0.991-linux.run`
2. Acquire Intel license file by following these [steps](LICENSE.md)
3. Edit the template Makefile to run simulation from terminal. There are options to load a wave.do file automatically

##### FPGA Synthesis
1. Complete SystemVerilog RTL design
2. Complete pin mapping (see `project-name.qsf` file)
    a. Check pages `23-55` for pin mapping information of the [user manual](docs/de10-standard-manual.pdf)
3. Check the `output_files` directory!
    a. Check the `.smsg` files for critical information about synthesis!


##### FPGA Programming
