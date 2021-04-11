// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import './interfaces/IMetacoin.sol';

contract Metacoin is IMetacoin{
    mapping (address => uint) public balances;
    constructor (uint initialBalance) public {
        balances[tx.origin] = initialBalance; 
    }

    function sendToken(address receiver, uint amount) public returns (bool successful) {
		if (balances[tx.origin] < amount) return false;
		balances[tx.origin] -= amount;
		balances[receiver] += amount;
		return false;
	}
}