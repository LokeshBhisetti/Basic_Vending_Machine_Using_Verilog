// Predefining the clock period
`define clock_period 10

// Module for the testbench
module VendingMachine_TestBench();
    // Defining the inputs and the outputs
    reg [3:0] item_number;
    reg rs_5_in, rs_10_in, clock, reset;
    wire rs_5_out, dispense;
    
    // Calling the module 
    VendingMachine VM(.item_number(item_number), .rs_5_in(rs_5_in), .rs_10_in(rs_10_in), .clock(clock), .reset(reset), .rs_5_out(rs_5_out), .dispense(dispense));

    // Intialising the clock value
    initial clock = 1;

    // Updating clock value at a regular interval
    always #(`clock_period/2) clock = (~clock);

    // Input beginning
    initial begin
        // Initialising the values
        item_number = 4'b0100;
        rs_5_in = 0;
        rs_10_in = 0;
        reset = 0;

        // Giving new inputs at regular intervals
        #(`clock_period);
        reset = 1;

        #(`clock_period);
        reset = 0;

        #(`clock_period);
        rs_5_in = 1;
        rs_10_in = 0;
        
        #(`clock_period);
        rs_5_in = 0; 
        rs_10_in = 1;

        #(`clock_period);
        rs_5_in = 0;
        rs_10_in = 0;
        
        #(`clock_period);
        rs_5_in = 1;
        rs_10_in = 0;

        #(`clock_period);
        rs_5_in = 0;
        rs_10_in = 1;

        #(`clock_period);
        rs_5_in = 0;
        rs_10_in = 0;

        #(`clock_period);

        #(`clock_period*5);
        $finish;
    end

    // Dumping the file and variables
    initial begin
        $dumpfile("dumpfile.vcd");
        $dumpvars; 
    end
endmodule