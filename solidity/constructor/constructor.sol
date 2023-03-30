// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// Base contract X
contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

// Base contract Y
contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

//1
contract B is X("Input to X"), Y("Input to Y") {

}
// Input to X

//2
contract C is X, Y {

    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}

contract D is X, Y {
    constructor() X("X was called") Y("Y was called") {}
}
// Order of constructors called:
// 1. X ie Name: "X was called" 
// 2. Y Text: "Y was called"
// 3. D

contract E is X, Y {
    constructor() Y("Y was called") X("X was called") {}
}
// Order of constructors called:
// 1. X ie Name: "X was called" 
// 2. Y Text: "Y was called"
// 3. E
