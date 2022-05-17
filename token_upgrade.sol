// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
import "https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/master/contracts/token/ERC20/ERC20Upgradeable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/master/contracts/proxy/utils/Initializable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/master/contracts/access/OwnableUpgradeable.sol";

contract ABC is ERC20Upgradeable, OwnableUpgradeable {

  function initialize() initializer public {
    __ERC20_init("abc", "ABC");
    __Ownable_init();
  }

  function mint(uint256 amount) public onlyOwner {
    _mint(msg.sender, amount*2*10**18);
  }
}
