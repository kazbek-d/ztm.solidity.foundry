// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {Test, console2, StdStyle} from "forge-std/Test.sol";
import {ERC20} from "../src/ERC20.sol";

contract BaseSetup is ERC20, Test {
    address internal alice;
    address internal bob;

    constructor() ERC20("name", "SYM", 18) {}

    function setUp() public virtual {
        alice = makeAddr("alice");
        bob = makeAddr("bob");

        console2.log(StdStyle.blue("When Alice has 300e18 Tokens"));
        _mint(alice, 300e18);

        // TODO: check why deal is not working
        // deal(address(this), alice, 300e18);
    }
}

contract Erc20TransferTest is BaseSetup {
    function setUp() public override {
        BaseSetup.setUp();
        _mint(bob, 100e18);
    }

    function testTransferTokensCorrectly() public virtual {
        vm.prank(alice);
        bool success = this.transfer(bob, 100e18);
        assertTrue(success, "Transfer should succeed");

        assertEqDecimal(this.balancesOf(alice), 200e18, decimals);
        assertEqDecimal(this.balancesOf(bob), 199e18, decimals);
    }
}
