# Basic_Vending_Machine_Using_Verilog
In this project, we designed a vending machine capable of dispensing four different products with various prices and an additional feature to return change when a higher denomination coin is inserted. The machine accepts only ₹5 and ₹10 coins.
The design utilized a Finite State Machine (FSM) model to define the machine's states, inputs, outputs, and state transitions. This FSM was implemented in Verilog, detailing the states and the logic for accepting coins, dispensing products, and returning change.
We developed a test bench to simulate various scenarios, including different coin denominations and product selections, to validate the machine's functionality. The testing confirmed the correct operation of the vending machine.
This project required knowledge of Verilog, FSMs, and digital design principles. It offered a challenging and rewarding experience, enhancing our understanding of vending machine operations. The outcome was a functional and efficient vending machine that reliably dispenses products and returns change.

## Specifications

- **Inputs:** item_number[3:0], rs_5_in, rs_10_in, clock, reset.
- **Outputs:** rs_5_out, dispense.
- **Other Variables:** current_state, next_state.
## Significance Of The Specifications

- **item_number:** Indicates which of the four items is selected.
- **rs_5_in:** Indicates whether the user has inserted a rs_5 or not.
- **rs_10_in:** Indicates whether the user has inserted a rs_10 or not.
- **rs_5_out:** Indicates whether a rs_5 is given out as change or not.
- **dispense:** Indicates whether the item is ready to be dispensed or not.
- **current_state:** Stores the current state of the FSM.
- **next_state:** Stores the next state to be achieved by the FSM.
## Modules

    module Item_One(rs_5_in, rs_10_in, clock, reset, rs_5_out, dispense)
This module is responsible for the functioning of the machine if the first item is selected.

    module Item_Two(rs_5_in, rs_10_in, clock, reset, rs_5_out, dispense)
This module is responsible for the functioning of the machine if the second item is selected. 

    module Item_Three(rs_5_in, rs_10_in, clock, reset, rs_5_out, dispense)
This module is responsible for the functioning of the machine if the third item is selected. 

    module Item_Four(rs_5_in, rs_10_in, clock, reset, rs_5_out, dispense)
This module is responsible for the functioning of the machine if the fourth item is selected. 

    module VendingMachine(item_number, rs_5_in, rs_10_in, clock, reset, rs_5_out, dispense)
This module is responsible for selecting one of the four modules as per the user’s choice.

## Working
  
To use the vending machine, the user begins by selecting the desired item. The machine then resets rs_5_in and rs_10_in to 0. The user can insert either a ₹5 or ₹10 coin per cycle. The machine will not dispense the selected item until the full amount is collected. Once the required amount is met, the machine dispenses the item and any change owed, and then prepares for the next cycle.

## Example
Selection: Item number 3 is chosen, which costs ₹25.
Initialization: The vending machine is set to the initial state S0.
First Coin: The user inserts ₹5. The machine state changes to S5.
Second Coin: The user inserts ₹10. The machine state changes to S15.
Pause: No coin is inserted, so the machine state remains at S15.
Third Coin: The user inserts another ₹5. The machine state changes to S20.
Final Coin: The user inserts ₹10. The machine state changes to S30.

Since the total amount is ₹30 and the item costs ₹25, the machine dispenses the selected item and provides ₹5 as change.
-After the state S30 is reached, the machine resets and goes back to state S0.



## Future Scope

We can further add a termination button to the machine. This button would allow the user to terminate the purchase process and receive all the money back sequentially.
