// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract Error {
    uint public num = 123;

    function testAssert() public view {
        assert(num == 123);
    }

    function foo() public {
        // accidentally update num
        num += 1;
    }

}



/*
- assert is used to check for conditions that should always be true
- If the condition evaluates to false then that means there might be a bug in your smart contract
- When an error is thrown there will be a gas refund
    - If you send 1000 gas and it used up 100 gas, 
    there will be a refund of 900 gas
*/