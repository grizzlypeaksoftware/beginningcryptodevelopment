const Migrations = artifacts.require("PuppyCoin");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
};