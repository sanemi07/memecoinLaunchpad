// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;
import  {Token} from "./Token";
contract Factory {
    uint256 public immutable fee;
    address public owner;
    address[] public tokens;
    uint256 public tokenCount;
    constructor(uint256 _fee) {
        fee=_fee;
        owner=msg.sender;
        
    }
    function create(string memory _name,string memory _symbol)   {
        Token token =new Token(msg.sender,_name,_symbol,1_00_0000 ether);
        tokens.push(address(token));
        tokenCount++;
        
    }
}