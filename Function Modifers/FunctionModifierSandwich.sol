// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionModifierSandwich {
    uint256 public count;

    modifier sandwich() {
        // code here
        count += 10;
        _;
        // more code here
        count *= 2;
    }

    function foo() external sandwich {
        count += 1;
    }
}

/* when the function foo is called:
- First calls on the sandwich modifier
    - updates the count by 10
    - the `_;` calls the main foo() function
- `count += 1` is executed
    - `count *= 2` is executed
*/
