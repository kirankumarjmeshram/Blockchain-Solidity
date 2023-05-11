const {expect} = require("chai");

describe("Token contract", function () {
    it('Deployment should assign that total supply of token to the owner', async function(){
        const [owner] = await ethers.getSigners();
        console.log("signers object: ", owner);

        const Token = await ethers.getContractFactory("Token"); // creating contract instance

        const hardhatToken = await Token.deploy();// deploying contract

        const ownerBalance = await hardhatToken.balanceOf(owner.address); // owner balance 10,000
        console.log("Owner Address:", owner.address);

        expect(await hardhatToken.totalSupply()).to.equal(ownerBalance);// total supply 10,000 if both true show+ve result else error
    }); 
});