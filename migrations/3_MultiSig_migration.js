const Wallet = artifacts.require("Wallet");

module.exports = (deployer, network, accounts) => {
    const _owners = ["0x250839052cbfc84bb7a21c743f39b66909bf77bf", 
    "0xd41e7fabe36445c5c529b49d635e0d8ce6267eca", 
    "0x45a0674718b6702ae97943f4a4f70c7856d2430a"]
    const _limit = 2
  deployer.deploy(Wallet, _owners, _limit);

};


// const HelloWorld = artifacts.require("HelloWorld");

// module.exports = function (deployer) {
//   deployer.deploy(HelloWorld);
// };

