// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Error { 
    function testCustomError(uint _i) public pure {
        require(_i <=10, "very long error message error error error error error");
        // code
    }   // gas cost of 21941 gas 


    error MyError(address caller, uint i);

    function testCustomError2(uint _i) public view {
        if(_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }
}

/*
- Custom error can only be used with revert
- custom error is cheaper than to use require with some error message.
- The longer the error message the more gas it will use
- A very long error message will use up a lot of gas
- We can save gas by using custom error 
*/ 

