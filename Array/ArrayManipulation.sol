// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


// Insert (push), get, update, delete, pop, length


contract Array {
    uint [] public nums = [1,2,3];

    function ArrayManipulation() external {
        nums.push(4);           //   [1,2,3,4]
        uint x = nums[1];       //   Assigning an ele
        nums[2] = 777;          //   Changing an ele
        // [1, 2, 777, 4]
        delete nums[1];         //   Clearing an ele
        // [1, 0, 777, 4]
        nums.pop();             //   Delete last ele
        nums.length();
    }
}

/*
Indexing is the same as Python 
*/
