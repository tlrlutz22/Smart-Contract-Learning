// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract Error {

    function testRevert(uint _i) public pure {
        if (_i > 10) {
            revert("i > 10");
        }
        // code
    }

/*
The first function does the same thing as the requireError.
Revert is a better option if the condition to check is nested in a lot of if statements
*/

    function testRevertTwo(uint _i) public pure {
        if (_i > 10) {
            // code
            if (_i > 2) {
                // more code
                if (_i >10) {
                    revert("i > 10");
                }
            }
        }
    }
}

