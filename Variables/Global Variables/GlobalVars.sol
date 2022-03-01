// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract GlobalVariables {
    function globalVars()
        external
        view
        returns (
            address,
            uint256,
            uint256
        )
    {
        address sender = msg.sender;
        uint256 timestamp = block.timestamp;
        uint256 blockNum = block.number;
        return (sender, timestamp, blockNum);
    }
}

/*
view is like pure.
view is a read only function
view functions can read data from state variables and global variables
pure cannot.

msg.sender is a global variable
    - stores the address that calls the function
    - the datatype of msg.sender is `address`

block.timestamp is a global variable
    - Stores the UNIX timestamp of when this function was called.
    - the datatype of block.timestamp is `uint`

block.number is a global vbariable
    - Stores the block number
    - the datatype of block.number is `uint`
*/
