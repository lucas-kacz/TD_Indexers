// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

contract Swapper{

    IERC20 public tokenA;
    IERC20 public tokenB;

    

    constructor(address _tokenAAddress, address _tokenBAddress){
        tokenA = IERC20(_tokenAAddress);
        tokenB = IERC20(_tokenBAddress);
    }

    function Swap(uint256 amount){

    }
}