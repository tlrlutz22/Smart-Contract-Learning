// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract S {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract T {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

// Order of execution
// 1. S
// 2. T
// 3. V0
contract V0 is S, T {
    constructor(string memory _name, styring memory _text) T(_text) S(_name_) {

    }
}

/*
The order of initialization is characterized by the order of inheritance.
Not the order of the constructor params.
*/

// Order of execution stays the same
// 1. S
// 2. T
// 3. V1
contract V1 is S, T {
    constructor(string memory _name, styring memory _text) S(_name_) T(_text) {
    }
}
