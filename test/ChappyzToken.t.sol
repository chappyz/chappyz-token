// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { Test, console2 } from "forge-std/Test.sol";
import { ChappyzToken } from "../src/ChappyzToken.sol";

contract ChappyzTokenTest is Test {

  ChappyzToken public token;

  function setUp() public {
    token = new ChappyzToken();
  }

  function test_Name() public {
    assertEq(token.name(), "Chappyz");
  }

  function test_Symbol() public {
    assertEq(token.symbol(), "CHAPZ");
  }

  function test_Decimals() public {
    assertEq(token.decimals(), 10);
  }

  function test_Supply10B() public {
    assertEq(token.totalSupply(), 10000000000 * (10 ** 10));
  }

  function test_PreSeedBalance() public {
    assertEq(token.balanceOf(0x7B32fadEd0C842B9ead0054d6688A7B92548B7A8), 750000000 * (10 ** 10));  // pre-seed
  }

  function test_SeedBalance() public {
    assertEq(token.balanceOf(0xbd83c509DF139cEb5944855C7f312986de1d2d75), 750000000 * (10 ** 10));  // seed
  }

  function test_StrategicKOLsBalance() public {
    assertEq(token.balanceOf(0xA26C8Fd8DCAe2E7D23Ece6Ab357fbff40Ffccf52), 500000000 * (10 ** 10));  // strategic
  }

  function test_PublicBalance() public {
    assertEq(token.balanceOf(0x221dF6BeF35f84180fF7346f6DeC6e24fBA8854a), 1600000000 * (10 ** 10)); // public
  }

  function test_TeamBalance() public {
    assertEq(token.balanceOf(0xF3330De3B74424f91D39bA035C3c40A8ab25423A), 1400000000 * (10 ** 10)); // team
  }

  function test_AdvisorsBalance() public {
    assertEq(token.balanceOf(0x7ED7907ED3BD217Ecc745CAAFd47FeAAD1dB80e4), 700000000 * (10 ** 10));  // advisors
  }
  
  function test_RewardsBalance() public {
    assertEq(token.balanceOf(0x0892f7bA2677b324180500AbE26485152091aEa2), 2500000000 * (10 ** 10)); // rewards
  }

  function test_TreasuryBalance() public {
    assertEq(token.balanceOf(0x51Ea9D6d01168c96E5273d492002be5663329142), 750000000 * (10 ** 10));  // treasury
  }

  function test_LiquidityBalance() public {
    assertEq(token.balanceOf(0x14b28a834e4cC56202490787EEe9965D8f5c01AB), 1050000000 * (10 ** 10)); // liquidity
  }

}
