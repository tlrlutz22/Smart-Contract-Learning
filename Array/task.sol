// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ArrayBasic {
    // Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    // Fixed sized array, all elements initialize to 0
    uint[3] public arrFixedSize;

    
    function get(uint i) external view returns (uint){
        return( arr[i]);
    }
}