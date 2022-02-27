// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }

    function bar() public pure virtual returns (string memory) {
        return "A";
    }

    // more code here
    function baz() public pure returns (string memory) {
        return "A";
    }
}

contract B is A {
    function foo() public pure override returns (string memory) {
        return "B";
    }

    function bar() public pure override returns (string memory) {
        return "B";
    }

    // more code here
}

/*
What if we wanted to use the code in contract A in contract B while also customizing it?
We could copy and paste but that is just duplicate code.

We have to use the keyword virtual
*/
