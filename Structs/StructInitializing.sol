// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Structs {
    struct Car {
        string model;
        uint256 year;
        address owner;
    }

    function InitializeInMemory() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
    }

    /*
`memory` creating a variable of car inside memory
--> the car variable will only exist while the function is being called
*/

    function InitializeKeyValue() external {
        Car memory lambo = Car({
            year: 1980,
            model: "Lamborghini",
            owner: msg.sender
        }); // Order doesn't matter
    }

    function InitializeDefaultValue() external {
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2010;
        tesla.owner = msg.sender;
    }
}
