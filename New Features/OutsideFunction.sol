//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

/*
Solidity 0.8
* Safe math
* custom errors
* Functions outside contract
* import {symbol as alias, symbol2} from "filename";
* Salted contract creations / create2
*/

// outside function calling
error Unauthorized(address caller);

contract VendingMachine {
    address payable owner = payable(msg.sender);

    
    function withdraw() public {
        if (msg.sender != owner)
            // revert("error");
            revert Unauthorized(msg.sender); // Slightly cheaper on gas

        owner.transfer(address(this).balance);
    }
}

/*
We do this so we can call it on other functions as well
*/

function helper(uint x) view returns (uint) {
    return x * 2;
}

contract TestHelper {
    function test() external view returns (uint) {
        return helper(123);
    }
}

// function helper2(uint x) view returns (uint) {
//     return foo + x * 2; // not compatible with internal veriables
// }

// contract TestHelper {
//     uint foo;

//     function test() external view returns (uint) {
//         return helper(123);
//     }
// }
