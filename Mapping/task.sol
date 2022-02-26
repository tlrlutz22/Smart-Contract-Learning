// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract MappingBasic {
    mapping(address => uint256) public balances;

    function get(address _addr) external view returns (uint256) {
        return (balances[_addr]);
    }

    function set(address _addr, uint256 _val) external {
        balances[_addr] = _val;
    }

    function remove(address _addr) external {
        delete balances[_addr];
    }
}
