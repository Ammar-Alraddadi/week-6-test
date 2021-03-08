const TechInsurance = artifacts.require("TechInsurance");

contract("TechInsurance", async function(accounts){
it (
    "should add a product", async function(){
        //let Product ID = 1;
        let instance = await TechInsurance.deployed()
        await instance.addProduct(1,"iphone",web3.utils.toWei('7', 'ether')) });
})