// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract HashFunc {    
    function encode(string memory text0, string memory text1) external pure returns(bytes memory) {
        return abi.encode(text0, text1);
    }


    function encodePacked(string memory text0, string memory text1) external pure returns(bytes memory) {
        return abi.encodePacked(text0, text1);
    }

    function collision(string memory text0, string memory text1) external pure returns (bytes32) {
        return keccak256(abi.encodePacked(text0, text1));
    }
}


/*
`encode` encode data into bytes
`encodePacked` compresses the data

Why is this important?
Sometimes there can be a hash collision.
*/