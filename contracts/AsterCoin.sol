pragma solidity ^0.5.0; // using solidity 0.5.0 version 

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Pausable.sol';
import 'openzeppelin-solidity/contracts/ownership/Ownable.sol';
import './TokenLock.sol';

contract AsterCoin is ERC20Pausable, Ownable { // Contract 이름은 AsterCoin
  string public constant name = "ASTER COIN"; // token name
  string public constant symbol = "ATC"; // symbol name
  uint public constant decimals = 18; // 소수점 18자리까지 사용하겠다.
  uint public constant INITIAL_SUPPLY = 1000000000 * 10 ** decimals; // 초기 발행량은 1000000000.000000000000000000 이다.


  // Lock
  mapping (address => address) public lockStatus;
  event Lock(address _receiver, uint256 _amount);

  // Airdrop
  mapping (address => uint256) public airDropHistory;
  event AsterCoinAirDrop(address _receiver, uint256 _amount);

  constructor() public {
    _mint(msg.sender, INITIAL_SUPPLY);
  }

  function dropToken(address[] memory receivers, uint256[] memory values) public {
    require(receivers.length != 0);
    require(receivers.length == values.length);

    for (uint256 i = 0; i < receivers.length; i++) {
      address receiver = receivers[i];
      uint256 amount = values[i];

      transfer(receiver, amount);
      airDropHistory[receiver] += amount;

      emit AsterCoinAirDrop(receiver, amount);
    }
  }


  function lockToken(address beneficiary, uint256 amount, uint256 releaseTime, bool isOwnable) onlyOwner public {
    TokenLock lockContract = new TokenLock(this, beneficiary, msg.sender, releaseTime, isOwnable);

    transfer(address(lockContract), amount);
    lockStatus[beneficiary] = address(lockContract);
    emit Lock(beneficiary, amount);
  }
}
