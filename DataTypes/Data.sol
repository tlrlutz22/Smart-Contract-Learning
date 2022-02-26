//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7; 

contract ValueType {
    bool public b = true;
    uint public u = 123;
    

    int public i = -123;
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
    bytes1 public b1 = 0xb5;
    bytes32 public b32 = 0x05416460deb76d57af601be17e777b93592d8d4d4a4096c57876a91c84f4a712;
}
 

/*
uint stands for unsigned integer. It has to be greater than or equal to zero
uint 256      0 to 2**256 - 1 (most common)
uint8         0 to 2**8 - 1
uint16        0 to 2** 16 - 1

to work with negatives declare `int`
int256       -2**255 to 2**255 - 1
int128       -2**127 to 2**127 - 1
*/

