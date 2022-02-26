// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ArrayShift {
    uint[] public arr;

    function example() public {
        arr = [1,2,3];
        delete arr[1]; // [1, 0, 3]
    }

/*
How do we fully delete the middle indexed number from the array?

We can use an array shift method
    [1, 2, 3] -- remove(1) --> [1, 3, 3] --> [1, 3]
    arr = [1, 2, 3, 4, 5, 6];
    [1, 2, 3, 4, 5, 6] -- remove(2) --> [1, 2, 4, 5, 6, 6] --> [1, 2, 4, 5, 6]
    Once the iterator hits arr[2], it shifts everything to the left and duplicates the last index.
    Then we can use pop to remove the last element.
    [1] -- remove(0) --> [1] --> []
*/
    function remove(uint _index) public {
        require(_index < arr.length, "index out of bound");

        for (uint i = _index; i < arr.length -1; i++) {
            arr[i] = arr[i + 1];
            arr.pop();
        }

/*
 
*/


        function test() external {
            remove(2);
            // [1, 2, 4, 5]
            assert(arr[0] == 1);
            assert(arr[1] == 2);
            assert(arr[2] == 4);
            assert(arr[3] == 5);
            assert(arr.length == 4);

            arr = [1];
            remove(0);
            // []
            assert(arr.length == 0);
        }
    }
}
