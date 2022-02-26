// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ForLoop {
    function loops() external pure {
        for (uint256 i = 0; i < 10; i++) {
            // code
            if (i == 3) {
                continue;
            }
            // more code
            if (i == 5) {
                break;
            }
        }
    }
}

/*
`continue` keyword:
When i == 3, the code below will not execute.
When i != 3, the code above and below will execute.

`break` keyword:
when i == 5, the loop will stop at 5 instead of 10.
*/
