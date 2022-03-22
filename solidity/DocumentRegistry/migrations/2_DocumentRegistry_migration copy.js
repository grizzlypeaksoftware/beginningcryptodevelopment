const Migrations = artifacts.require("DocumentRegistry");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
};