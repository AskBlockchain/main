// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/presets/ERC20PresetMinterPauser.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Capped.sol";

 uint256 _cap;

contract KazToken is ERC20, ERC20PresetMinterPauser, ERC20Capped {
    constructor() public ERC20PresetMinterPauser("Kaz Token", "KAZ") ERC20Capped(uint256 cap_) {     

        require(cap_ > 0, "ERC20Capped: cap is 0");
        _cap = cap_;      
       

    }

    // Import the "transfer" function from the ERC20 base contract
    using ERC20 for ERC20.transfer;

    // Import the "mint" and "pause" functions from the ERC20PresetMinterPauser base contract
    using ERC20PresetMinterPauser for ERC20PresetMinterPauser.mint; 
    using ERC20PresetMinterPauser for ERC20PresetMinterPauser.pause;

    // Import the "setCap" function from the ERC20Capped base contract
    //using ERC20Capped for ERC20Capped.cap_;
}
