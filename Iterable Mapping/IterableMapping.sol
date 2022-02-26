// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract IterableMapping {
    mapping(address => uint256) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

    function set(address _key, uint256 _val) external {
        balances[_key] = _val;

        if (!inserted[_key]) {
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    function getSize() external view returns (uint256) {
        return keys.length;
    }

    // function first() external view returns (uint) {
    //     return balances[keys[0]];
    // }

    // function last() external view returns (uint) {
    //     return balances[keys[keys.length - 1]];
    // }

    function get(uint256 _i) external view returns (uint256) {
        return balances[keys[_i]];
    }
}

/*
For arrays we can get the size length and whatever element we like in the array,
However that isn't the case with a mapping.

How do we get the size and iterate the mapping?

*/
