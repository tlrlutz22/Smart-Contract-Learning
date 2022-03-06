// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// Initializing and declaring an immutable variable
contract Immutable {
    address public immutable owner;

    constructr() {
        owner = msg.sender;
    }

    uint public x;
    function foo() external {
        require(msg.sender == owner);
        x += 1;
    } // 43585 gas
}

/*

*/