// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Immutable {
    address public immutable owner = msg.sender;

    uint public x;
    function foo() external {
        require(msg.sender == owner);
        x += 1;
    } // 43585 gas
}

/*
We can use immutable state variables to ensure 
a permanent state variable on the blockchain.

- `immutable` is like constant except that we can only initialize it once,
when the contract is deployed.

- Declaring `immutable` saves  gas
*/

contract Mutable {
    address public owner = msg.sender;

    uint public x;
    function foo() external {
        require(msg.sender == owner);
        x += 1;
    } // 45718 gas
}