//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import { Unauthorized, helper as h1 } from "./OutsideFunction.sol";


function helper(uint x) view returns (uint) {
}


//Importing functions
contract Import {
        function test() external view returns (uint) {
        return helper(123);
    }
}

/*
- Cannot create an outside function with the same name
- The work around is renaming the function
*/ 