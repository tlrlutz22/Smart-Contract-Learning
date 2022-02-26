// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Array - dynamic or fixed size
// Initialization


contract Array {
    uint [] public nums = [1,2,3];        // Dynamic
    uint [3] public numFixed = [4, 5, 6];   // Fixed

}

/*
Dynamic means that the size of the variable can change
The number within the fixed array specifies the length
*/ 