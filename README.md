# RISC-V-32I-Single-Cycle-Processor
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

***1. Load Word I Type***

![Load I type Theory](https://github.com/user-attachments/assets/a1ce9a8b-0417-4b88-a0b4-a8900cc0a956)

     The Load word is done using I Type Instruction, where the data word from Data_Memory (RD3) to loaded to Register_file(WD3).

            Instruction                                       Machine Language
     Eg 1:  lw x6, -4(x9)                                     0xFFC4A303
     Eg 2:  addi x5,x0,0x2 #This is your data
            addi x6,x0,0x40 # This is your base address
            sw x5,0x8(x6)
            lw x7,0x8(x6)                                     0x00832383
            
***Simulation Waveform***
    
 ![Load I Type](https://github.com/user-attachments/assets/e984c036-4173-400a-a978-84ca0c8957e9)
 

***2. Store Word S Type***

 ![Store Word Datapath S type Theory](https://github.com/user-attachments/assets/2e6edbbf-6fb4-40ae-b69a-23cbd4da00bc)

      The Store word is done using S Type Instruction, based on A(address from ALUResult) in Data_Memory, the value of RD2(Register_file) will be stored in          WD(Data_Memory). 
      
            Instruction                                       Machine Language
     Eg 1:  sw x6, 8(x9)                                     0x0064A423
     Eg 2:  addi x11,x0,0x28 #This is your data
            addi x12,x0,0x30 # This is your base address
            sw x11,0x8(x12)                                    0x00B62423

***Simulation Waveform***

 ![Store Word Datapath S type](https://github.com/user-attachments/assets/ea5f59ec-25ba-465f-ba11-e7a97bc60e01)
 

**3. Read Word R Type**

 ![Read Word R Type Theory](https://github.com/user-attachments/assets/11bbe502-30bb-4c48-90bb-3110b1188ff5)

      The Read word is done using R Type Instruction, where the Result(Mux_Data_Memory) which is the ALUResult(ALU) is read from the WD3(Register_file).

            Instruction                                       Machine Language
     Eg 1:  or x4, x5, x6                                     0x0062E233

***Simulation Waveform***

 ![Read Word R Type](https://github.com/user-attachments/assets/7b593973-0549-4221-902a-5295abd2b368)

# Simulation Tools Used

The simulation has been in **Visual Studio** code with **Icarus Verilog environment**, which supports **gtkwave** for verilog simulaiton.

**Note:** Download **Icarus Verilog** from:https://bleyer.org/icarus, after downloading in **CMD** type **iverilog**, you can see iverilog with gtkwave preinstalled.

**Terminal code:**

Eg: PS C:\Users\user\Desktop\Github projects\RISC_V_Single_Cycle_Core\Load Word I Type> **iverilog -o out.vvp .\Single_Cycle_Top_Tb.v .\Single_Cycle_Top.v,**
**vvp out.vvp,**
**gtkwave.**

      

      


      
