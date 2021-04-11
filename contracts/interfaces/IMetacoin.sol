// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

interface IMetacoin {
    function balances(address owner) external returns (uint); 
    function sendToken(address receiver, uint amount) external returns (bool successful);
}