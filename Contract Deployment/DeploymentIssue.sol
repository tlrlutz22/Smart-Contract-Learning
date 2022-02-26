// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract TestContract1 {
    address public owner = msg.sender;

    function setOwner(address _owner) public {
        require(msg.sender == owner, "not owner");
        owner = _owner;
    }
}

contract TestContract2 {
    address public owner = msg.sender;
    uint public value = msg.value;
    uint public x;
    uint public y;

    constructor(uint _x, uint _y) payable {
        x = _x;
        y = _y;
    }
}

contract Proxy {
    function deploy(bytes memory _code) external payable {
        new TestContract1();
        // new TestContract2();
    }
}

/*
What if we want to both contracts instead of just one?
We can only deploy one contract right now
--> in order to deploy both we would have to recompile and change the contract

We want to be able to deploy the contract by passing the contract into deploy()
and not change any code.
*/