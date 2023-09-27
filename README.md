# MOORE_FSM_Sequence_Detector

1. Introduction

The VHDL Moore FSM Sequence Detector is a digital circuit that recognizes a particular sequence of binary inputs. It is based on the Moore FSM model, where the current state determines the output and transition to the next state based on the input. The design can be used in various applications, including pattern recognition and control systems.
the sequence to be detected is "1001".

2. Prerequisites

Before working with this VHDL Moore FSM Sequence Detector project, ensure you have the following:
- VHDL Simulator: You will need a VHDL simulator for simulating and testing the FSM design. Common choices include ModelSim and Xilinx Vivado.
- Familiarity with VHDL: Basic knowledge of VHDL and digital logic design principles will be beneficial.

3. Project Structure

The project structure is organized as follows:

One way (numerical display):
- VHDL_MOORE_FSM_Sequence_Detector.vhd, The main VHDL file for the sequence detector design.
- VHDL_MOORE_FSM_Sequence_Detector.do, A DO file for simulating the sequence detector.
- FSM_Sequence_Detector.png, image of the FSM.

Second way (word display):
- VHDL_MOORE_FSM_Sequence_Detector.vhd, The main VHDL file for the sequence detector design.
- VHDL_MOORE_FSM_Sequence_Detector.do, A DO file for simulating the sequence detector.
- FSM_Sequence_Detector.png, image of the FSM.

4. Finite State Machine

The Moore FSM in this project is designed to detect the sequence "1001." It consists of multiple states, each representing a part of the sequence. The transitions between states are determined by the input sequence, and the output is based on the current state.

The FSM is preconfigured to recognize the sequence "1001," and you can see the state transitions in the VHDL_MOORE_FSM_Sequence_Detector file. You can modify the state transitions and output behavior to detect different sequences or perform specific actions when a sequence is detected.

5. Simulation

To simulate the sequence detector:
- Copy the VHDL_MOORE_FSM_Sequence_Detector.vhd and VHDL_MOORE_FSM_Sequence_Detector.do files into your project directory.
- Modify the DO file (VHDL_MOORE_FSM_Sequence_Detector.do) to include the sequence detector instantiation and test cases.
- Use your VHDL simulator (ModelSim or Xilinx Vivado) to compile and simulate,.
- Analyze the simulation results to ensure the sequence detector operates correctly for your use case, especially when the input sequence is "1001."
