// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
//Immutable variables are like constants. 
//Values of immutable variables can be set inside the constructor but cannot be modified afterwards

// constant variables are evaluated at compile-time and 
//can be of any type, while immutable variables are assigned at
// deployment-time and can only be value types. Accessing constant variables is gas-free,
// whereas accessing immutable variables consumes gas.
contract Immutable {
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}