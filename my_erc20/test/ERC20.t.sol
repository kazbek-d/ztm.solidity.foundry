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
  }

  function testTransferTokensCorrectly() public virtual {
    vm.prank(alice);
    this.transfer(bob, 100);
  }

}