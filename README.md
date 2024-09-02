# RISC-V-Single-Cycle-Core
This repository consists of Load, Store and Read word data paths using a Single Cycle Core.
Implementation of Risc-V single cycle architecture consisting of six base instructions (R, I, B, S, J, U). 

This is an implementation of Risc-V base single cycle processor. This basic design supports six base instructions mentioned as:

R-Type

I-Type

S-Type

B-Type

J-Type

U-type

All above instructions are 32 bit encoding based.

# Block Diagram TOP Architecture

![image](https://github.com/user-attachments/assets/5061c045-1118-4efe-8434-62689757d5b9)

# Source Codes and Test Benches

Source code of all modules are provided in Source_code folder and all those modules are finally called in Top_level.v file. In order to test each module test benches for these modules are provided in separate folder named as test_Benches. And similarly in order to check the complete processor design a test bench file named as Single_cycle.v in test_Bench folder is used.

**Load I Type, Store S Type and Read R Type Instruction words are in the respective directories.**
