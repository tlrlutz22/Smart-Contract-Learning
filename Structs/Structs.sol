// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Structs {
    struct Car {
        string model;
        uint256 year;
        address owner;
    }

    Car public car; // Struct state variable
    Car[] public cars; // An array of struct
    mapping(address => Car[]) public carsByOwner; // A mapping of struct
}

/*
structs allow data to be grouped together
structs can be declared through state variables, arrays, and mappings

What if the owner has more than one car?
--> use a mapping struct
*/
