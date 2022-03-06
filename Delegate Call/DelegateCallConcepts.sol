// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;


/*

delegate call executes code in another contract, 
in the context to the contract that called it.

A calls B and sends 100 wei
       B calls C and sends 50 wei
a ---> B ---> C
              msg.sender = B       // This is a regular call              
              msg.value = 50
              execute code on C's state variables
              use ETH in C


What is different with delegate call?

delegate calls means that it will execute the code inside 
the contract that is being called with the state variables
and other context of the contract that called it.

A calls B, then sends 100 wei
       B delegatecall C
A ---> B ---> C
              msg.sender = A
              msg.value = 100
              execute code on B's state variables
              use ETH in B


/*
