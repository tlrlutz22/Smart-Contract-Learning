// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// only fallback should be called.
contract Fallback {
    event Log(string func, address sender, uint value, bytes data);

    fallback() external payable {
        emit Log("fallback", msg.sender, msg.value, msg.data);
    }
}