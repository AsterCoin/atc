const AsterCoin = artifacts.require("./AsterCoin");

module.exports = function(deployer) {
  deployer.deploy(AsterCoin);
};
