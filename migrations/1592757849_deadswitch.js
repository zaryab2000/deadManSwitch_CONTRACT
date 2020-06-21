const DeadsSwitch = artifacts.require("DeadSwitch");

module.exports = function(deployer) {
  deployer.deploy(DeadsSwitch);
};
