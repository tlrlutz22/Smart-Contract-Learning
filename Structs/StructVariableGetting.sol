// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Structs {
    struct Car {
        string model;
        uint256 year;
        address owner;
    }

    Car[] public cars;

    function StructVariableGetting() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        cars.push(toyota);
        Car memory _car = cars[0];
        _car.model;
        _car.year;
        _car.owner;
    }
}

/*
Getting struct variables can only be done within the function when using memory.
This will not return any external view.
How do we return data from struct?
*/
