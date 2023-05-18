// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ReceiveEther {
     /*
    Which function is called, fallback() or receive()?

           send Ether
               |
         msg.data is empty?
              / \
            yes  no
            /     \
receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
    */

    //event Log(string func, address sender, uint value, bytes data);

    // fallback() external payable {
    //     emit Log("fallback", msg.sender, msg.value, msg.data,  msg.data);
    // }

    // receive() external payable {
    //     emit Log("receive", msg.sender, msg.value, '');
    // }

    // Function to receive Ether. msg.data must be empty
    receive() external payable {}

    // Fallback function is called when msg.data is not empty
    fallback() external payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
    
}
