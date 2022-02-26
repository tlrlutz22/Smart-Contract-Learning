// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Set
contract Mapping {
    mapping(address => mapping(address => bool)) public isFriend;

    function getValue() external {
        isFriend[msg.sender][address(this)] = true;
    }
}
