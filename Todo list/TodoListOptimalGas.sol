// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// Insert, update, read from array of structs
contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) external {
        todos.push(Todo({text: _text, completed: false}));
    }

    // gas cost 32362
    function updateText(uint256 _index, string calldata _text) external {
        todos[_index].text = _text;
        todos[_index].text = _text;
        todos[_index].text = _text;
        todos[_index].text = _text; // This is cheaper if we only have one field
    }

    // gas cost 31714
    function StorageUpdate(uint256 _index, string calldata _text) external {
        Todo storage todo = todos[_index]; // If we have multiple fields this is optimal for gas
        todo.text = _text;
        todo.text = _text;
        todo.text = _text;
        todo.text = _text;
    }

    /*
`StorageUpdate` is cheaper on gas because we only update the array once, where `updateText` we access it four times
Since we are only updating it once we will use the first example
*/
}
