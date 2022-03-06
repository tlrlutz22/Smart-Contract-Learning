// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// What if we didn't have access to the Counter Contract?
// We would use interface

contract Counter {
    uint public count;

    function inc() external {
        count += 1;
    }

    function dec() external {
        count -= 1;
    }
}

contract CallInterface {
    function examples(address _counter) external {
        Counter(_counter).inc();
    }
}