pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

import "./Ownable.sol";

contract HelloWorld{
    string message = "Hello World";

//----------------------------------------------
    Ownable[] public ownableArray;


    function own() public{
        Ownable ownable = new Ownable();
        ownableArray.push(ownable);
    }
//------------------------------------------------


    function setMessage(string memory newMessage) public payable{
        message = newMessage;
    }

    function hello() public view returns (string memory){
        return message;
    }
}