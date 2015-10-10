<<<<<<< HEAD
# cpu by verilog

### Introduction
* The CPU is developed based on **Verilog** Hardware Description language. 
* The **IDE** is ISE Designed Suite. 
* The **simulation platform** is ModelSim PE Student Edition.
* **Test tool** is  [Nexys 3 board](http://www-classes.usc.edu/engr/ee-s/201/ee201l_lab_manual/detour_signal_schematic/ee201l_detour_rev5.pdf).

---
The Project can be devided into two parts:

1. Develope CPU modules, ensure the instruction set could be fetched by CPU from IMEM. 
The instruction will then be sent to CON module. After calculating by ALU module, results will be sent to the output pin. 
The process of **_fetch instruction_ *-* _parse instruction_ *-* _calculate_ *-* _write to MEM_** forms into a loop. 
So that it works as a 4-stage pipeline.  
The core modules include:
  - IMEM module
  - DMEM module
  - CPU module
  - regfile module
  - PC module
  - Selector module
  - Extention module
  - ALU module
  - Con module  
  
2. Besides the core modules, there are expansion modules which are useful when it is applied into the implementation on the Development Board. 
The expansion modules include:
  - Anti-jitter module
  - Clk-Devided module
  - Seven-segment display module
  
  The CPU support Mips Assembly Instruction sets. You just need to write the assembly instructions and compile the code snippet,
  and put it into the ISE folder. CPU will run the loop stated before and then calculate the results and shows on the development board.
