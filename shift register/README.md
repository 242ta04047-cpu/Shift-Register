# 4-Bit Shift Register Using Verilog

## Description

This project implements a 4-bit shift register using Verilog HDL. The register stores 4 bits of data and shifts the data by one position on every positive clock edge.

## Objective

The objective is to design and simulate a basic 4-bit shift register using Verilog HDL.

## Inputs

* `clk` – Clock signal
* `reset` – Reset signal
* `serial_in` – Serial data input

## Output

* `q[3:0]` – 4-bit stored data

## Working

The shift register receives one bit of serial data at a time. On every positive edge of the clock, the existing data shifts one position to the left and the new input bit enters the register.

Example:

```text
Initial: 0000

Input 1 → 0001
Input 0 → 0010
Input 1 → 0101
Input 1 → 1011
```

## Project Files

* `README.md` – Project documentation
* `shift_register.v` – Verilog design code
* `shift_register_tb.v` – Testbench
* `simulation_output.txt` – Simulation results

## Tools Used

* Verilog HDL
* Xilinx Vivado / ModelSim / Icarus Verilog
* GitHub

## Applications

* Data storage
* Serial-to-parallel conversion
* Data transfer
* Digital communication systems
* Temporary data storage

## Conclusion

The 4-bit shift register was successfully designed and simulated using Verilog HDL. The simulation demonstrates that the input data is shifted correctly on every clock cycle.
