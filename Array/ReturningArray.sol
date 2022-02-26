// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


// Returning array from function

contract Array {
    uint [] public nums = [1,2,3];

    function returnArray() external view returns (uint[] memory) {
        return nums;
    }
}

/*
this is not reccommended because it could run up the gas cost depending on the array length.
*/