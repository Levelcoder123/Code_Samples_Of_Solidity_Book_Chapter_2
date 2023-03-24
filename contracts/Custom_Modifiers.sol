// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract AccountContract {
address public owner;
/*
* Modifier onlyOwner definition.
*/
modifier onlyOwner() {
require(msg.sender == owner, "not owner");
_; //Rest of the function body execution
}
/*
* The deployer of the contract would become owner of contract
*/
constructor() public {
owner = msg.sender;
}
/*
* Modifier onlyOwner used, only allow owner to
* call withdraw function
*/
function withdraw() public onlyOwner {
msg.sender.transfer(address(this).balance);
}
//...
}