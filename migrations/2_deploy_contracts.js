const coinSpawn = artifacts.require("coinSpawn");
const coinCaller = artifacts.require("coinCaller");
const Metacoin = artifacts.require("Metacoin");

module.exports = function (deployer) {
  deployer.deploy(Metacoin, 6969);
  deployer.deploy(coinCaller);
};