// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import './Owner.sol';

contract Faucet is Owner {

    event Withdrawal(address indexed to, uint amount);
    event Deposit(address indexed to, uint amount);

    function withdraw(uint amount) public {
        // check that amount is max 0.1 eth
        require(amount <= 0.1 ether);

        // sender = the one who triggers the contract
        // this statement transfers the required amount to
        // the sender
        payable(msg.sender).transfer(amount);

        emit Withdrawal(msg.sender, amount);
    }

    // receive any amount
    receive() external payable {}

    function destroy() public onlyOwner {
        selfdestruct(owner);
    }
}