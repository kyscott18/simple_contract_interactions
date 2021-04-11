// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import './interfaces/IMetacoin.sol';

contract coinCaller {
	struct transfer{
		address coinContract;
		uint amount;
		address recipient;
		bool successful;
		uint balance;
	}

	mapping(uint => transfer) public transfers;
	uint public numTransfers;

	function sendCoin(address coinContractAddress, address receiver, uint amount) public {
		transfer storage t = transfers[numTransfers]; //Creates a reference t
		t.coinContract = coinContractAddress;
		t.amount = amount;
		t.recipient = receiver;
		t.successful = IMetacoin(t.coinContract).sendToken(receiver, amount);
		t.balance = IMetacoin(t.coinContract).balances(address(this));
		numTransfers++;
	}
}