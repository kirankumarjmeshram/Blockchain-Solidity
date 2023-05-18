// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Fallback {
    event Log(string func, uint gas);

    // Fallback function must be declare as external
    fallback() external payable {
        // send / transfer (forwards 2300 gas to this fallback function)
        // call (forword all of the gas)
        emit Log("fallback", gasleft());
    }

    //receive is a varient of fallback that is trigger when msg.data is empty
    receive() external payable {
        emit Log("receive", gasleft());
    }

    // Helper function to check the balance of this contract
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}