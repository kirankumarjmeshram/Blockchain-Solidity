// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
// boolean
// uint256
// int256
// address
contract Primitives {
    //BOOLEAN
    bool public boo = true;

    //UINT
    //uint for non negative integers
    uint8 public u8 =1;
    uint public u256 = 456;
    uint public  u = 123; // uint is an alias for uint256

    //INT
    // int for all type of numbers
    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -123; // int is same as int256

    // minimum and maximum of int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    // ADDRESS
    address add = 0x579496973fFfE2Bd5528Dd9A1a46e9db499fF3C0;
    
    
    bytes1 a = 0xb5; //  [10110101]
    bytes1 b = 0x56; //  [01010110]

    // Default values
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}