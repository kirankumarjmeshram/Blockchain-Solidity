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

// Single Inheritance
contract B is A {
    function foo() public pure virtual override returns (string memory){
        return "B";
    }
}

contract C is A {
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

// Multi-Level Inheritance
contract D is C, B {
    function foo() public pure override(B, C) returns (string memory) {
        return super.foo();
    }
}