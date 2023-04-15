require("dotenv").config();
const API_URL = process.env.API_URL;
const PUBLIC_KEY = process.env.PUBLIC_KEY;
const PRIVATE_KEY = process.env.PRIVATE_KEY;
const { createAlchemyWeb3 } = require("@alch/alchemy-web3");
const web3 = createAlchemyWeb3(API_URL);
const contract = require("../artifacts/contracts/MyEvent.sol/EventEmit.json");// calling MyNFT json 
const contractAddress = "0xbF9B1334433Bc3487dF2AAA1c9d8Dc8E9151eb0a";
const nftContract = new web3.eth.Contract(contract.abi, contractAddress); //Creating instance of contract
//create transaction

myContract.methods.triggerEvent(123).send({ from: PUBLIC_KEY })
.on('receipt', function(receipt) {
    const events = receipt.events;
    const myEvent = events.MyEvent;
    const from = myEvent.returnValues._from;
    const value = myEvent.returnValues._value;
    console.log("MyEvent was emitted with values from: " + from + " and value: " + value);
});

