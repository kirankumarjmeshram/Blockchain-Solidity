const {ethers, JsonRpcProvider} = require('ethers');
//const provider = new ethers.providers.JsonRpcProvider;
const provider = new JsonRpcProvider(`https://mainnet.infura.io/v3/9dee1d24ae374be4a52e5244abf53fb8`);

const querryBlockchain = async() => {
    const block = await provider.getBlockNumber(); // it will show current block number
    console.log("Current Block Number : ", block)
}

querryBlockchain()