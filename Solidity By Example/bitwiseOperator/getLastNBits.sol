// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract getLastNBits {
    // Get Last n bits from x
    function getLatNBitsUsingMask(uint x, uint n) external pure returns (uint) {
        //ex, last 3 bits, ie. n=3;
        // x      = 1101 = 13
        // mast   = 0111 = 7 ie. 1<<3 = 0111
        // x&mask = 0101 = 5;
        uint mask = (1<<n) -1;
        return x&mask;
    }

    function getLastNBitsUsingMod(uint x, uint n) external  pure returns (uint) {
        return x % (1<<n);
    }
}