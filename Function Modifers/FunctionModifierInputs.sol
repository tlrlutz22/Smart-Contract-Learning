// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionModifierCap {
    bool public paused;
    uint256 public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused() {
        require(!paused, "paused");
        _;
    }

    function incBy(uint256 _x) external whenNotPaused {
        require(_x <= 100, "x>=100:");
        count += _x;
    }
}

// Simplified version
contract FunctionModifierInput {
    bool public paused;
    uint256 public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused() {
        require(!paused, "paused");
        _;
    }

    modifier cap(uint256 _x) {
        require(_x <= 100, "x >= 100");
        _;
    }

    function incBy(uint256 _x) external whenNotPaused cap(_x) {
        count += _x;
    }
}
