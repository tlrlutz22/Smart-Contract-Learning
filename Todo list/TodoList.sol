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

    function updateText(uint256 _index, string calldata _text) external {
        todos[_index].text = _text;
    }

    // 29458 gas cost
    function getMemory(uint256 _index)
        external
        view
        returns (string memory, bool)
    {
        Todo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }

    // 29397 gas cost
    function getStorage(uint256 _index)
        external
        view
        returns (string memory, bool)
    {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    function toggleComplete(uint256 _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}

/*
the get function is unnecessary because solidity provides a built in function for the array.
getStorage is cheaper because it only copies data once whereas memory copies data twice.
*/
