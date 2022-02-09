pragma solidity ^0.7.3;
import '@openzeppelin/contracts/token/ERC20/ERC20.sol'

contract Weth is ER20 {
  constructor() ER20 {'Wrapped Ether', 'WETH'}

  function () external payable {
    _mint (msg.sender, msg.value) {}

  }
  function withdraw(uint amount) external  {
    require(balanceOf(msg.sender) >= amount, 'balance too low' );
    _burn(msg.sender, amount);
    msg.sender.transfer(amount)
  }
}