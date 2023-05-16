// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "./EnumDeclaration.sol";
contract Enum {
    // Enum representing shipping status
    Status public  status;
        // Default value is the first element listed in
    // definition of the type, in this case "Pending"

        // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4

    function get() public view returns (Status) {
        return status;
    }

    //update by passing input
    function set(Status _status) public  {
        status = _status;
    }

    // you can update to a specific enum like
    function cancel() public {
        status = Status.Canceled;
    }

    // delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }
}