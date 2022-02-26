// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Constant {
    address public constant MY_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    uint public constant MY_UINT = 123;
}

contract Var {
    address public MY_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}

/*
constant variables are usually in all caps
we use constants because it helps save gas
constant gas cost: 21442 gas
non constant gas cost: 23553 gas
*/