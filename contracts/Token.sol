// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


/* Your assignment is to create a new ERC20 token contract from the Openzeppelin template ERC20PresetMinterPauser and add cap functionality. 
Meaning that there is a maximum cap of token issuance. 

You should also build a new function that allows you to modify the cap.

You should also study the AccessControl contract from Openzeppelin and implement a new role in the same ERC20 contract. 
This role should be the only one to be able to change the contract’s cap. */




import "../node_modules/@openzeppelin/contracts/token/ERC20/presets/ERC20PresetMinterPauser.sol";

 


contract MyToken is ERC20PresetMinterPauser {
        constructor() ERC20PresetMinterPauser ("MyToken", "KAZ"){
            _mint(msg.sender, 20000);

            _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());

            _setupRole(MINTER_ROLE, _msgSender());
            _setupRole(PAUSER_ROLE, _msgSender());

                                     
        }


       
}
 
    
