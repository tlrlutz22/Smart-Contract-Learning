// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// Destructuring assignment

contract FunctionOutputs {
    function returnMany() public pure returns (uint256, bool) {
        return (1, true);
    }

    function destructingAssingments() public pure {
        (uint256 x, bool b) = returnMany();
        (, bool _b) = returnMany();
    }
}
