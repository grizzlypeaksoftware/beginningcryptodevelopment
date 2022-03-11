const Migrations = artifacts.require("StoreValue");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
};
