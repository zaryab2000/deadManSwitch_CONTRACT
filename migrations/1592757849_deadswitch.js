const DeadsSwitch = artifacts.require("DeadSwitch");

module.exports = function(deployer) {
  deployer.deploy(DeadsSwitch, "0xbf93E9687d3B38a879a8826FDaA218AEf82E2b50");
};
