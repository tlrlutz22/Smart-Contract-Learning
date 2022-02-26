// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract WhileLoop {
    function loops() external pure {
        uint256 j = 0;
        while (j < 10) {
            if (j == 5) {}
            j++;
        }
    }

    function sum(uint256 _n) external pure returns (uint256) {
        uint256 s;
        for (uint256 i = 1; i <= _n; i++) {
            s += i;
        }
        return s;
    }
}

/* 
the larger number of loops the more gas it will use
so optimize the loop as much as possible
*/
