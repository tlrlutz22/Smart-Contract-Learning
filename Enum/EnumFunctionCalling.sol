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

    Status public status; 

    function get() view external returns (Status) {
        return status;
    }

    function set(Status _status) external {
        status = _status;
    }

    function ship() external {
        status = Status.Shipped;
    }

    function reset() external {
        delete status;
    }
}

/*
How do we return a status as as string instead of a int?
*/