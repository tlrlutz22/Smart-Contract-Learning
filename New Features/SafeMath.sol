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

// Safe math
contract SafeMath {
    function testUnderflow() public pure returns (uint) {
        uint x = 0;
        x--;
        return x;
    }

    function testUncheckedUnderflow() public pure returns (uint) {
        uint = 0;
        unchecked { x--; }
        return x;
    }
}