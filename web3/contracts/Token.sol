// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.27;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    address public creator;
    address  payable public  owner;
    constructor(address _creator,string memory name,
    string memory symbol,uint256 totalSupply) ERC20(name,symbol)  {
        owner=payable(msg.sender);
        creator = _creator;
        _mint(msg.sender, totalSupply);

    }
}