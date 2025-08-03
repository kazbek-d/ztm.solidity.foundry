// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "forge-std/Script.sol";

import {ERC20} from "../src/ERC20.sol";

contract ERC20Script is Script {
    function setUp() public {}

    function run() public {
        uint256 key = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(key);

        new ERC20(
            address(0x8512af8A8eAD7deE9d9F451a0f8C4876faE72BF1),
            "Name",
            "SYM",
            18
        );

        vm.stopBroadcast();
    }
}
