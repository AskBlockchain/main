pragma solidity ^0.8.0;
// SPDX-License-Identifier: UNLICENSED

contract MyContract {
  uint public value;
  event ValueSet(uint val);
  function setValue(uint val) public {
    value = val;
    emit ValueSet(value);
  }
  function getValue() view public returns (uint) {
    return value;
  }
}
