// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract mostSignificantBit{
    function mostSignificantBitPosition(uint x) external pure returns (uint) {
        uint i=0;
        // position starts from 0
        // // x = 1100 = 10, most significant bit = 1000, so this function will return 3
        while ((x>>=1) > 0){
            //the >>= operator is a compound assignment operator that 
            //performs a bitwise right shift and assigns the result back to the 
            //variable x.
            i++;
        } 
        return i;
    } 
}