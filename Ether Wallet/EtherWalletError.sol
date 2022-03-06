// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract EtherWallet {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    receive() external payable {}

    function withdraw(uint _amount) external {
        require(msg.sender == owner, "caller is not owner");
        owner.transfer(_amount);
    }
}

/*
Anyone will be able to send ETH into the contract.
but only the owner can send ETH out of the contract.

`receive()` can be replaced by `fallback()`
we want to make it clear that the contract will only receive ether

- We have to declare the owner as payable!

*/