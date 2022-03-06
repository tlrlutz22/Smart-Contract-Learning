// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract CallTestContract {
    function setX(address _test, uint _x) external {
        TestContract(_test).setX(_x);
    }
}


contract TestContract {
    uint public x;

    function setX(uint _x) external {
        x = _x;
    }
}