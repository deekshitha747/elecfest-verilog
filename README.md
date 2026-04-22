implementation of a 2 input NAND gate and a 4 input XOR gate top module verified with test bench
## Project Structure
top_module: contains the hardware design files
test_bench: contains the verification files
## How to Run the Simulations

### 1. 2-Input AND Gate
iverilog -o and_sim.vvp top_module/and_gate.v test_bench/and_gate_tb.v <br>
vvp and_sim.vvp <br>
gtkwave and_gate.vcd <br>
<img width="1846" height="989" alt="image" src="https://github.com/user-attachments/assets/13faab91-74ad-4f2e-9c66-43f004d5c07f" />

### 2. 4-Input XOR Gate
iverilog -o xor_sim.vvp top_module/xor.v test_bench/xor_tb.v <br>
vvp xor_sim.vvp <br>
gtkwave xor_gate.vcd <br>
<img width="1846" height="989" alt="image" src="https://github.com/user-attachments/assets/443a8e85-4bb5-4dc4-b7bc-f7099a89104e" />
