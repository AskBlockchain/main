// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


/* Your assignment is to create a new ERC20 token contract from the Openzeppelin template ERC20PresetMinterPauser and add cap functionality. 
Meaning that there is a maximum cap of token issuance. 

You should also build a new function that allows you to modify the cap.

You should also study the AccessControl contract from Openzeppelin and implement a new role in the same ERC20 contract. 
This role should be the only one to be able to change the contract’s cap. */

import "../node_modules/@openzeppelin/contracts/token/ERC20/presets/ERC20PresetMinterPauser.sol";



contract KazToken is ERC20PresetMinterPauser {

    uint256 internal _cap = 4000;

    constructor(address account, uint256 amount) ERC20PresetMinterPauser("Kaz Token", "KAZ") {
        
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());

        _setupRole(MINTER_ROLE, _msgSender());
        _setupRole(PAUSER_ROLE, _msgSender());

        
        require(ERC20.totalSupply() + amount <= cap(), "ERC20Capped: cap exceeded");
        super._mint(account, amount);
    }

    function modifyCap(uint256 cap_) public {
        require (hasRole(MINTER_ROLE, msg.sender), "Must have MINTER Role");
        require(cap_ > 0, "ERC20Capped: cap is 0");
        _cap = cap_;
    }

      function cap() public view virtual returns (uint256) {
        return _cap;
    }


  
}

 
    
