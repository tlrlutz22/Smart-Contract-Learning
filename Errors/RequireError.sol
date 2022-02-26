// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract Error {
    function testRequire(uint _i) public pure {
        require(_i <= 10, "i > 10");
        // Code
    }
}

/*
Mostly used to validate inputs and access control.
(who gets to control the function)

If the input validation passes then we can continue with the code
*/