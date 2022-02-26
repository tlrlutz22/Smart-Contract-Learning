// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Enum {
    enum Status {
        None, 
        Pending,
        Shipped,
        Completed,
        rejected,
        Cancelled
    }

    Status public status;   // Use it as a state variable

    struct Order {
        address buyer;      
        Status status;      // Use it in a struct        
    }                           

    Order[] public order;   // Use it in an array    
}