const solc = require("solc");
const fs = require("fs");
const Web3 = require("web3");
const { Contract } = require("ethers");
let web3 = new Web3(new Web3.providers.HttpProvider("HTTP://127.0.0.1:7545"));

let fileContent = fs.readFileSync("demo.sol").toString();

console.log(fileContent);

var input = {
  language: "Solidity",
  sources: {
    "demo.sol": {
      content: fileContent,
    },
  },

  settings: {
    outputSelection: {
      "*": {
        "*": ["*"],
      },
    },
  },
};

var output = JSON.parse(solc.compile(JSON.stringify(input)));
console.log(output);

ABI = output.contracts["demo.sol"]["demo"].abi;
bytecode = output.contracts["demo.sol"]["demo"].evm.bytecode.object;

console.log("abi : ", ABI);
console.log("bytecode : ", bytecode);

let contract = new web3.eth.Contract(ABI);

let defaultAccount;

web3.eth.getAccounts().then((accounts) => {
  // will show all accounts of ganache
  console.log("Accounts : ", accounts);
  defaultAccount = accounts[0];
  console.log("Default Account:", defaultAccount); //to deploy the contract from default Account
  contract
    .deploy({ data: bytecode })
    .send({ from: defaultAccount, gas: 470000 })
    .once("receipt", (receipt) => {
      //event,transactions,contract address will be returned by blockchain
      console.log("Contract Address:", receipt.contractAddress);
    })
    .then((demoContract) => {
      demoContract.methods.x().call((err, data) => {
        console.log("Initial Value:", data);
      });
    });
});
