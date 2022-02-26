// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// getting values
contract Mapping {
    mapping(address => uint256) public balances;

    function setValue() external {
        balances[msg.sender] = 123;
    }
}

/*
Viewing the balances through the state variable `balances`
*/
