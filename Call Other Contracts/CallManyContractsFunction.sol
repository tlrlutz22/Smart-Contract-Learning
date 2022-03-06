// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract CallTestContract {
    function setX(TestContract _test, uint _x) external {
        _test.setX(_x); 
    } 


    function getX(address _test) external view returns(uint x) {
        x = TestContract(_test).getX();        
    }

    function setXandSendEther(address _test, uint _x) external payable {
        TestContract(_test).setXandReceiveEther(_x);
    }  
}

/*
function getX(address _test) external view returns(uint) {
    uint x = TestContract(_test).getX();
    return x;        
}
*/

contract TestContract {
    uint public x;
    uint public value = 123;

    function setX(uint _x) external {
        x = _x;
    }

    function getX() external view returns (uint) {
        return x;
    }

    function setXandReceiveEther(uint _x) external payable {
        x = _x;
        value = msg.value;
    }
}

