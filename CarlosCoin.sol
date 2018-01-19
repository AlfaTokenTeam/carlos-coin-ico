pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract CarlosCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function CarlosCoin(address _owner)  UpgradeableToken(_owner) {
    name = "CarlosCoin";
    symbol = "BCC";
    totalSupply = 100000000000;
    decimals = 3;

    balances[_owner] = totalSupply;
  }
}