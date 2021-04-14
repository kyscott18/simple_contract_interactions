const coinSpawn = artifacts.require("coinSpawn");
const coinCaller = artifacts.require("coinCaller");
const Metacoin = artifacts.require("Metacoin");

module.exports = function (deployer) {
  deployer.deploy(coinSpawn);
  deployer.deploy(coinCaller);
};