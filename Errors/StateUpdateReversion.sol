// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract Error {
    uint public num = 123;

    function foo(uint _i) public {
        num += 1;
        require(_i < 10);
    }
}

/*
If the requirement fails then whatever change that was supposed to be done to the state variable will be undone.
*/