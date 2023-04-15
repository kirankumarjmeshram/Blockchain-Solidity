async function main() {
  const MyEvent = await ethers.getContractFactory("EventEmit");//here EventEmit is contract name
  // Start deployment, returning a promise that resolves to a contract object
  const myEvent = await MyEvent.deploy();
  console.log("Contract deployed to address:", myEvent.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

 // Contract deployed to address: 0xbF9B1334433Bc3487dF2AAA1c9d8Dc8E9151eb0a