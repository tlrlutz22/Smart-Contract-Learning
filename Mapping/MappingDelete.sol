// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Delete
contract Mapping {
    mapping(address => uint256) public balances;

    function setValue() external {
        balances[msg.sender] = 123;
    }

    function deleteValue() external {
        delete balances[msg.sender];
    }
}
