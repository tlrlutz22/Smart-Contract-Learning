// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract StateVariables {
    uint256 public myUint = 123; // State variable

    function foo() external {
        uint256 notStateVariable = 456; // Local variable
    }
}

/*
- stored inside a contract and outside a function.
- State variables are stored on the blockchain.
- Local variables are not saved to the blockchain.

*/
