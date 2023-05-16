// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Mapping {
    mapping (address => uint) public myApp;

    function get (address _addr) public  view returns (uint) {
        // mapping always returns a value
        // If the value was never set, it will return the default value

        return myApp[_addr];
    }

    function set(address _addr, uint _i) public  {
        // update the value at this address
        myApp[_addr] = _i;
    }

    function remove(address _addr) public {
        delete myApp[_addr];
    }
}