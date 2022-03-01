// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// 2 ways to call parent constructors
// Order of initialization

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

// How do we call the constructor of the parent contracts?

// 1. We can use `()`
contract U is S("s"), T("t") {

}

// 2. we can use curly braces and pass in the initializations to the child constructors
contract V is S, T {
    constructor(string memory _name, string memory _text) S(_name) T(_text) {}
}

// We can use these two methods simultaneously
contract VV is S("s"), T {
    constructor(string memory _text) T(_text) {}
}
