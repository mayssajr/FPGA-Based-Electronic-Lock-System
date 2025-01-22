# FPGA-Based-Electronic-Lock-System
This project implements an electronic lock system on the Altera Intel FPGA DE10-Lite board. The system is designed using VHDL and developed with Quartus Prime. The primary objectives include understanding VHDL basics, designing combinational circuits, and simulating hardware logic to control a lock mechanism.

# Project Overview
Board: Altera Intel FPGA DE10-Lite
Programming Language: VHDL
Tools: Quartus Prime for synthesis, simulation, and timing analysis
# Features
Keypad Decoder: Implements a 16-key keypad matrix decoding algorithm.
Lock Mechanism Simulation: Uses LEDs to indicate the lock's status (red for locked, green for unlocked).
7-Segment Display Integration: Displays the key pressed using combinational logic.
Code Comparator: Compares user input with a predefined access code to control the lock.
# Simulation and Testing
The project includes comprehensive simulations to verify the behavior of each module:

Functional Simulation: Validates logic correctness using a functional testbench.
Timing Simulation: Analyzes the timing behavior for real-world performance.

