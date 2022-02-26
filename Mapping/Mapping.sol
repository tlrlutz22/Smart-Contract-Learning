// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Simple and Nested Mapping

contract Mapping {
    mapping(address => uint256) public balances; // simple
    mapping(address => mapping(address => bool)) public isFriend; // nested
}

/*
Mapping is like a dictionary in python
Use cases: 
- iterating through an array and find a match
- We can do this in one look up with a mapping (Saves gas).
["alice", "bob", "charlie"]
{ "alice": true, "bob": true, "charlie": true }

*/
