// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract Array {
    // Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];

    //Fixed size array
    //All elements are initiated to 0

    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // Solidity can return the entire array
    //But this function should be avoided for arrays that can grow indefinitely in length
    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        //remove last element and decrease arr length by 1
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }

    function getLength() public view returns(uint) {
        return  arr.length;
    }

    function remove(uint index) public {
        //Delete does not change the array length
        //It resets the value at inedx to it's default value,
        //in this case 0
        delete arr[index];
    }

    // function examples() external {
    //     // create array in memory, only fixed size can be created
    //     uint[] memory a = new uint[](5);
    // }

}