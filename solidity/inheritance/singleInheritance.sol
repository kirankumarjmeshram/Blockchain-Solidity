// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

/* Graph of inheritance
    A
   / \
  B   C
 / \ /
F  D,E

*/

contract A {
    function foo() public pure virtual returns (string memory){
        return "A";
    }
}

contract B is A {
    function foo() public pure virtual override returns (string memory){
        return "B";
    }
}