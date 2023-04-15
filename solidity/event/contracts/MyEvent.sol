// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract EventEmit {
    event MyEvent(address indexed _from, uint256 _value);

    function triggerEvent(uint256 _value) public {
        emit MyEvent(msg.sender, _value);
    }
}
