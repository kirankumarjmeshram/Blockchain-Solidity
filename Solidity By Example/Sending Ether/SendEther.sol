// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SendEther {
    function sendViaTransfer(address payable _to) public payable {
        // This function is no longer recommended for sending Ether
        _to.transfer(msg.value);
    }

    function sendViaSend( address payable _to) public payable {
        // Send returns a boolean value indicating failure or success
        //This function is not recommended for sending Ether

        bool sent = _to.send(msg.value);
        require(sent, "Failure to send Ether");
    }

    function sendViaCall (address payable _to) public payable {
        //Call return a boolean value indicating failure or success 
        //This in current recommended method to use
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failure to send Ether");
    }
}