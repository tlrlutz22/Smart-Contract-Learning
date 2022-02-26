//SPDX-License-Identifier: MIT
pragma solidity 0.8.7; // Specifying specific build
pragma solidity ^0.8.7; //Specifying greater than or equal to build

/*
The best practice is to set the compiler version to a specific number when compiling on the mainnet
*/

contract HelloWorld {
    string public myString = "hello world";
}

/*
public allows us to access the variable when we deploy the contract
*/
