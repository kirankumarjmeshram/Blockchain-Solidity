//SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract DataStore {
    struct Data {
        uint256 number;
        string text;
        address owner;
    }
    
    mapping(bytes32 => Data) public dataStore;
    
    function storeData(bytes32 key, uint256 number, string memory text) public {
        dataStore[key] = Data(number, text, msg.sender);
    }
    
    function searchData(bytes32 key) public view returns (uint256, string memory, address) {
        Data storage data = dataStore[key];
        require(data.owner != address(0), "Data not found");
        return (data.number, data.text, data.owner);
    }
}