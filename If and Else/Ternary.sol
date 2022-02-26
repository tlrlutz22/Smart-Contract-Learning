// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract IfElse {
    function Nonternary(uint256 _x) external pure returns (uint256) {
        if (_x < 10) {
            return 1;
        }
        return 2;
    }

    function ternary(uint256 _x) external pure returns (uint256) {
        return _x < 10 ? 1 : 2;
    }
}
