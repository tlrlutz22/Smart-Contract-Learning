// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Set
contract Mapping {
    mapping(address => uint256) public balances;

    function getValue() external {
        balances[msg.sender] = 123;
        uint256 bal = balances[msg.sender];
        uint256 bal2 = balances[address(1)]; // 0
        balances[msg.sender] += 456; // 579
    }
}
