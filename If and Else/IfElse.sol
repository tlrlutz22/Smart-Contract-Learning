// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract IfElse {
    function example(uint256 _x) external pure returns (uint256) {
        if (_x < 10) {
            return 1;
        } else if (_x < 20) {
            return 2;
        } else {
            return 3;
        }
    }

    // we can remove the else statement
    function example2(uint256 _k) external pure returns (uint256) {
        if (_k < 10) {
            return 1;
        } else if (_k < 20) {
            return 2;
        }
        return 3;
    }
}

contract IfElseSimpl {}
