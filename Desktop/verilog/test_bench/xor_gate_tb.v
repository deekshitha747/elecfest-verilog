`timescale 1ns/1ps

module xor_gate_tb;

  reg a, b, c, d;
  wire y;
  
  // Reference (expected output)
  wire y_ref;
  
  // Mismatch signal
  wire mismatch;
  
  // Instantiate DUT (Device Under Test)
  xor_gate uut 
    (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .y(y)
    );
    
    // Hardcoded reference logic (same XOR behavior)
  assign y_ref = a ^ b ^ c ^ d;
  
  // Mismatch = 1 if output is wrong
  assign mismatch = (y !== y_ref);
  
  initial begin
      $dumpfile("xor_gate.vcd");  // waveform file
      $dumpvars(0, xor_gate_tb);
  
      // Test all cases
      integer i; // Define an integer for the loop

    for (i = 0; i < 16; i = i + 1) begin
        {a, b, c, d} = i; // Assign the binary value of 'i' to the 4 inputs
        #10;               
    end
  
      $finish;
  end

endmodule
