// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Structs {
    struct Car {
        string model;
        uint256 year;
        address owner;
    }

    Car[] public cars;

    function StructVariableUpdate() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        cars.push(toyota);
        Car storage _car = cars[0];
        _car.year = 1999;
    }

    function StructVariableDelete() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        Car memory tesla = Car("Tesla", 2019, msg.sender);
        cars.push(toyota);
        cars.push(tesla);
        Car storage _car = cars[1];
        delete _car.owner;
    }

    function StructElementDelete() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        Car memory tesla = Car("Tesla", 2019, msg.sender);
        Car memory lambo = Car("Lambo", 2015, msg.sender);
        cars.push(toyota);
        cars.push(tesla);
        cars.push(lambo);
        delete cars[2];
    }
}
