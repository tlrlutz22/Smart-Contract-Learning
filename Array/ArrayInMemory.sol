// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


// Creating array in memory

contract Array {
    uint [] public nums = [1,2,3];

    function ArrayManipulation() external {
        uint[] memory a = new uint[](5);
        a[1] = 123;
    }
}

/*
Since the array is fixed we cannot add or remove anything from the array
But we can update, quantify (.length), and specify (.get)
*/