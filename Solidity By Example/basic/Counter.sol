// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;
// constant variables are evaluated at compile-time and 
//can be of any type, while immutable variables are assigned at
// deployment-time and can only be value types. Accessing constant variables is gas-free,
// whereas accessing immutable variables consumes gas.
contract Counter {
    uint public count ;
    function get() public view returns (uint) {
        return count;
    }

    function inc() public {
        count+=1;
    }

    function dec() public {
        count -=1;
    }
}