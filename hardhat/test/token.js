const {expect} = require("chai");

describe('Token Contract', () => {
    let Token;
    let hardhatToken;
    let owner;
    let addr1;
    let addr2;
    let addrs;

    beforeEach(async ()=>{
        Token = await ethers.getContractFactory("Token");
        [owner, addr1, addr2, ...addrs] = await ethers.getSigners();
        hardhatToken = await Token.deploy(); // here hardhatToken is the instance of contract name"Token"

    });

    describe("Developement", ()=>{
        it("Should set the right owner", async ()=>{
            expect(await hardhatToken.owner()).to.equal(owner.address);
        });

        it("Should assign the total supply of tokens to the owner", async ()=>{
            const ownerbalance = hardhatToken.balanceOf(owner.address);
            expect(await hardhatToken.totalSupply()).to.equal(ownerbalance);
        });
    });

});







// const {expect} = require("chai");
// describe("Token contract", function () {
//     it('Deployment should assign that total supply of token to the owner', async function(){
//         const [owner] = await ethers.getSigners();
//         //console.log("signers object: ", owner);

//         const Token = await ethers.getContractFactory("Token"); // creating contract instance

//         const hardhatToken = await Token.deploy();// deploying contract

//         const ownerBalance = await hardhatToken.balanceOf(owner.address); // owner balance 10,000
//         //console.log("Owner Address:", owner.address);

//         expect(await hardhatToken.totalSupply()).to.equal(ownerBalance);// total supply 10,000 if both true show+ve result else error
//     });

//     it("Should transfer tokens between accounts", async function () {
//         const [owner, addr1, addr2] = await ethers.getSigners();

//         const Token = await ethers.getContractFactory("Token");

//         const hardhatToken = await Token.deploy(); 

//         //trancefer 10 tokens from owner to addr1
//         await hardhatToken.transfer(addr1.address, 10);
//         expect(await hardhatToken.balanceOf(addr1.address)).to.equal(10); //pass

//         //trancefer 5 tokens from addr1 to addr2
//         await hardhatToken.connect(addr1).transfer(addr2.address, 5);
//         expect(await hardhatToken.balanceOf(addr2.address)).to.equal(50); //fail  

//     })
// }); 