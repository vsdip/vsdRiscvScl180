# VexRiscV Harnessed with Efabless's Caravel and SCL180 PDK

## Overview
VexRiscV Harnessed with Efabless's Caravel and SCL180 PDK is a reference project demonstrating the synthesis and gate-level simulation (GLS) of the Caravel design using the SCL180 PDK. The project leverages Efabless's harness and the VexRiscV core, making it a valuable resource for users working on similar SoC designs. This repository aims to help designers understand the flow and apply it to their own projects.

- Project by :- Dhanvanti Bhavsar
- Mentored by :- Mr. Kunal Ghosh (VLSI System Design) and SFAL 
- PDK used :- SCL180
- Tool used :- Synopsys Design Tools
- Top Module :- vsdcaravel

  **caravel** is from efabless+SKY130+opensource , while **vsdcaravel** is from vsd+SCL180+Synopsys

## Features
- **Synthesis and Gate-Level Simulation (GLS)** of Caravel SoC
- **Utilization of SCL180 PDK** for ASIC design
- **Reference for Efabless's harness VexRiscV**
- **Reproducible and Open-source Workflow**

## Repository Structure
```
caravel_scl180/
├── GLS            # Contains test bench files and synthesized netlists
├── dv             # Contains functional verification files 
├── gl             # Contains GLS supports files
├── lib            # Contain required libraries
├── rtl            # Contains verilog files
├── scl180         # Contains wrapper files
├── synthesis      # Contains synthesis scripts and outputs
   ├──output       # Contain synthesis output
   ├──report       # Contain area,power and qor post synth report
   ├──work         # Synthesis work folder
├── README.md      # This README file
```


## Prerequisites
Before using this repository, ensure you have the following dependencies installed:

- **SCL180 PDK** ( SCL180 PDK)
- **Skywater 130 PDK** (will be replaced in future for por)
- **RiscV32-uknown-elf.gcc** (building functional simulation files)
- **Caravel User Project Framework** from Efabless
- **Synopsis tools** for synthesis
- **Verilog Simulator** (e.g., Icarus Verilog)
- **GTKWAVE** (used for visualizing testbench waves)

## Test Instructions
### Repo Setup
1. Clone the repository:
   ```sh 
   git clone https://github.com/dhanvantibhavsar/SFAL_SOCDESIGN.git
   cd SFAL_SOCDESIGN
   ```
2. Install required dependencies (ensure dc_shell and SCL180 PDK are properly set up).

### Functional Simulation Setup
3. Setup functional simulation file paths
   - Edit Makefile at this path [./dv/hkspi/Makefile](./dv/hkspi/Makefile)
   - Modify and verify `GCC_Path` to point to correct riscv installation
Functional Simulation
###  Functional Simulation Execution
4. open a terminal and cd to the location of Makefile i.e. [./dv/hkspi](./dv/hkspi)
5. make sure hkspi.vvp file has been deleted from the hkspi folder
6. Run following command to generate vvp file for functional simulation
   ```
   make
   vvp hkspi.vvp
   ```
- you should receive output similar to following output on successfull execution
![functional simulation](./images/functional_simulation.png)
7. Visualize the Testbench waveforms for complete design using following command
   ```
   gtkwave hkspi.vcd hkspi_tb.v
   ```
   ![GTK WAVE](./images/gtkwave_FS.png)

### Synthesis Setup
8. Modify and verify following variables in synth.tcl file at path [./synthesis/synth.tcl](./synthesis/synth.tcl)
   ```
   library Path
   Root Directory Path
   SCL PDK Path

   ```
### Running Synthesis
9. open a terminal and cd to the work folder i.e. [./synthesis/work_folder](./synthesis/work_folder)
10. Run synthesis using following command
```
dc_shell -f ../synth.tcl
```
This should update the caravel_snthesis.v file in [./synthesis/output](./synthesis/output) folder
### GLS Setup
11. Modify and verify following variables in Makefile at path [./GLS/Makefile](./GLS/Makefile) according to your paths
```
SCL PDK Path
GCC Path
```

12. Modify synthesized netlist at path [./synthesis/output/caravel_synthsis.v](./synthesis/output/caravel_synthesis.v) to remove blackboxed modules
   - Remove following modules
   ```
   simple_por
   RAM128
   housekeeping
   ```
   - add following lines at the beginning of the netlist file to import the blackboxed modules from functional rtl
   ```
   `include "simple_por.v"
   `include "RAM128.v
   `include "housekeeping.v"
   ```
###  GLS Execution
13. open a terminal and cd to the location of Makefile i.e. [./GLS](./GLS)
14. Replace 1'b0 from caravel.v file with vssa.
15. make sure hkspi.vvp file has been deleted from the GLS folder
16. Run following command to generate vvp file for GLS
   ```
   make
   vvp hkspi.vvp
   ```
- you should receive output similar to following output on successfull execution
![GLS output](./images/gls.png)
17. Visualize the Testbench waveforms for complete design using following command
   ```
   gtkwave hkspi.vcd hkspi_tb.v
   ```
   ![GTK WAVE](./images/gtkwave_gls.png)
18. Compare output from functional Simulation and GLS to verify the synthesis output

    
## Results
- Successfully ran functional simulations, synthesis and GLS for VexRiscV Harnessed with Efabless's Caravel usign SCL180 PDK.

## Issues
- Housekeeping module has not synthesized successfully and was blackboxed for GLS purpose. 
- Por, RAM modules are blackboxed and will be replaced with macros in future

## Future Roadmap
- Resolve houskeeping issues
- Generate more testbench simulations based on VexRiscv internal function
- Complete PD flow for tapeout

## Refrences
- https://github.com/efabless/caravel/









