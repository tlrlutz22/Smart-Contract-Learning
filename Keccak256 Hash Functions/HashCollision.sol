// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract HashFunc {    
    function collision(string memory text0, string memory text1) external pure returns (bytes32) {
        return keccak256(abi.encodePacked(text0, text1));
    }

    function collisionAvoidance(string memory text0, uint x, string memory text1) external pure returns (bytes32) {
        return keccak256(abi.encodePacked(text0, x, text1));
    }
}
