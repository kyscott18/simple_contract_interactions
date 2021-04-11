// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import './Metacoin.sol';

contract coinSpawn{
 	mapping(uint => address) public deployedContracts;
	uint numContracts;
	function createCoin(uint initialBalance) public returns (address a) {
		deployedContracts[numContracts] = address(new Metacoin(initialBalance));
		return deployedContracts[numContracts++];
	}
}