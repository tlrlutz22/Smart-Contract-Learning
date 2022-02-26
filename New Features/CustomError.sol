//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

/*
Solidity 0.8
* Safe math
* custom errors
* Functions outside contract
* import {symbol as alias, symbol2} from "filename";
* Salted contract creations / create2
*/

// custom error

contract VendingMachine {
    address payable owner = payable(msg.sender);

    function withdraw() public {
        if (msg.sender != owner)
            // revert("error");
            revert ("error");

        owner.transfer(address(this).balance);
    }
}

contract VendingMachine2 {
    address payable owner = payable(msg.sender);

    function withdraw() public {
        if (msg.sender != owner)
            // revert("error");
            revert ("error error error error error error error error error");

        owner.transfer(address(this).balance);
    }
}
/*
success = 23692
fail = 	23642
** redeploy the contract **
bigger error = 23696
The longer error the more gas
*/

// Custom error
contract UnauthorizedCustomError {
    address payable owner = payable(msg.sender);
    error Unauthorized();
    function withdraw() public {
        if (msg.sender != owner)
            // revert("error");
            revert Unauthorized(); // Slightly cheaper on gas

        owner.transfer(address(this).balance);
    }
}

contract UnauthorizedCustomError2 {
    address payable owner = payable(msg.sender);

    error Unauthorized(address caller);
    
    function withdraw() public {
        if (msg.sender != owner)
            // revert("error");
            revert Unauthorized(msg.sender); // Slightly cheaper on gas

        owner.transfer(address(this).balance);
    }
}

