// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {Test} from "forge-std/Test.sol";
import {ERC20} from "../src/ERC20.sol";

contract Erc20Test is ERC20, Test {

  address private alice;
  address private bob;

  constructor() ERC20("name", "SYM", 18) {}

  function setUp() public {
    alice = makeAddr("alice");
    bob = makeAddr("bob");

    _mint(alice, 200e18);
  }

  function testTransferTokensCorrectly() public virtual {
    vm.prank(alice);
    bool success = this.transfer(bob, 100e18);
    assertTrue(success, "Transfer should succeed");
    assertEq(balancesOf[alice], 100e18, "Aalice's balance should be 100 after transfer");
  }

}