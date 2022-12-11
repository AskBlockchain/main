pragma solidity ^0.8.0;
// SPDX-License-Identifier: UNLICENSED

contract Ownable{
     address owner;

     modifier onlyOwner{
         require(msg.sender == owner);
         _;
     }

     constructor(){
         owner = msg.sender;
     }
}