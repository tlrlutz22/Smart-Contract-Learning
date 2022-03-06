// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

/*
When we add a new state variable we are changing the storage layout
And therefore the script will write to a different storage in the other contract

Make sure the original state variables are declared in the same order.
l;
*/

contract TestDelegateCall {
    address public owner;
    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) external payable {
        num = 2 * _num;
        sender = msg.sender;
        value = msg.value;
    }
}

contract DelegateCall {
    uint public num;
    address public sender;
    uint public value;

    function setVars(address _test, uint _num) external payable {
        // _test.delegatecall(abi.encodeWithSignature("setVars(uint256)", _num));
        (bool success, bytes memory data) = _test.delegatecall(abi.encodeWithSelector(TestDelegateCall.setVars.selector, _num)
        );
        require(success, "delegatecall failed");
    }
}