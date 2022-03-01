// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Event {
    event Log(string message, uint256 val);
    // up to 3 parameters can be indexed
    event IndexedLog(address indexed sender, uint256 val);

    function notReadOnlyFunc() external {
        emit Log("foo", 1234);
    }

    function IndexedKeyWordFunc() external {
        emit IndexedLog(msg.sender, 789);
    }

    event Message(address indexed _from, address indexed _to, string message);

    function sendMessage(address _to, string calldata message) external {
        emit Message(msg.sender, _to, message);
    }
}

/*
Events allow you to write data on the blockchain.
Which can later be retrieved by the purpose of a smart contract
The main purpose of event is to log that something happened.
This can be a cheap alternative to storing data as a state variable
`notReadOnlyFunc()` isn't a read only function because it is only storing it 
onto the the blockchain.
*/
