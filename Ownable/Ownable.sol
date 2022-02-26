// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/*
State variables
global variables
function modifier
function 
error handling

- let build an app where you can claim ownership of a contract
*/

contract OWnable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }

    function setOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }

    function onlyOwnerCanCallThisFunc() external onlyOwner {
        // code
    }

    function anyOneCanCall() external {
        // code
    }
}
