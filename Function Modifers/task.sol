// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract FunctionModifier {
    bool public paused;
    uint public count;
    
    // Modifire to check if not paused
    modifier whenNotPaused() {
        require(!paused, "paused");
        // Underscore is a special character only used inside
        // a function modifier and it tells Solidity to
        // execute the rest of the code.
        _;
    }
    
    modifier whenPaused() {
        require(!paused, "not paused");
        _;
    }

    function reset() external whenPaused {
        count = 0;
    }

    function setPause(bool _paused) external {
        paused = _paused;
    }