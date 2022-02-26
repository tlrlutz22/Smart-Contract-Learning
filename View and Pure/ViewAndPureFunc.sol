// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ViewAndPureFunctions {
    uint256 public num;

    function viewFunc() external view returns (uint256) {
        return num;
    }

    function pureFunc() external pure returns (uint256) {
        return 1;
    }

    function addToNum(uint256 x) external view returns (uint256) {
        return num + x; // This is a pure function
    }

    function add(uint256 x, uint256 y) external pure returns (uint256) {
        return x + y;
    }
}

/*
view functions read data from the blockchain
pure functions do not read data from the blockchain

- viewFunc() is reading data from the blockchain
- pureFunc() isn't reading or modifiying any data from the blockchain
    - 
*/
