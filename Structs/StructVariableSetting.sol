// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Structs {
    struct Car {
        string model;
        uint256 year;
        address owner;
    }

    Car[] public cars;

    function StructArrayPush() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        Car memory lambo = Car({
            year: 1980,
            model: "Lamborghini",
            owner: msg.sender
        }); // Order doesn't matter
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2010;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);
    }

    function InstantArrayPush() external {
        cars.push(Car("Ferrari", 2020, msg.sender));
    }
}
