
pragma solidity ^0.5.0;
contract Shares {
  mapping (address => uint) shares;
 
  function updateShares(uint share) public {
    shares[msg.sender] = getShares(msg.sender) + share;
  }
 
  function getShares(address addr) public view returns(uint) {
    return shares[addr];
  }
}