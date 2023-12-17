// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "../lib/forge-std/src/Script.sol";
import {Token1} from "../src/Token1.sol";
import {Token2} from "../src/Token2.sol";
import {Swapper} from "../src/Swapper.sol";

contract DeploymentScript is Script {
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        
        Token1 token1 = new Token1();
        Token2 token2 = new Token2();
        
        Swapper swapper = new Swapper(address(token1), address(token2), 0xc59E3633BAAC79493d908e63626716e204A45EdF);

        vm.stopBroadcast();
    }
}