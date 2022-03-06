// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

/*
Fallback executed when
- function doesn't exist
- directly send ETH

notes:
- The main use case of the fallback() function is to enable direct 
sending/recieving of ether.
- another variation of fallback() is receive().

fallback() or receive()?

    Ether is sent to contract
               |
        is msg.data empty?
              / \
           yes   no
           /       \
receive() exists?   fallback()
        /      \
      yes       no
      /          \
  receive()    fallback() 
*/