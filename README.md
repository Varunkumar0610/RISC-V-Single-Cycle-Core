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

# Testing

The Load, Store and Read Word Type has been implemented for specific load, store and read word datapath examples.

**1. Load Word I Type**

      ![Load I type Theory](https://github.com/user-attachments/assets/a1ce9a8b-0417-4b88-a0b4-a8900cc0a956)

     The Load word is done using I Type Instruction type , where the data word from Data_Memory (RD3) to loaded to Register_file(WD3)

            Instruction                                       Machine Language
     Eg 1:  lw x6, -4(x9)                                     0xFFC4A303
     Eg 2:  addi x5,x0,0x2 #This is your data
            addi x6,x0,0x40 # This is your base address
            sw x5,0x8(x6)
            lw x7,0x8(x6)                                     0x00832383

**2. Store Word S Type**
      ![Store Word Datapath S type Theory](https://github.com/user-attachments/assets/2e6edbbf-6fb4-40ae-b69a-23cbd4da00bc)
      


      
