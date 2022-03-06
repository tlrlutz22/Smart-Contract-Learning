// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract HashFunc {
    function hash(string memory text, uint num, address addr) external pure returns(bytes32) {
        return keccak256(abi.encodePacked(text, num, addr));
    }
}

/*
Even barely changing the input params leads to a very different hash 
Which is why this is powerful.
*/