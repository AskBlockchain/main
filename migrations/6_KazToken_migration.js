const KazToken = artifacts.require("KazToken");

module.exports = function (deployer) {
  deployer.deploy(KazToken, '0x250839052cBFc84bB7a21C743f39B66909bF77Bf', 3000);
};
