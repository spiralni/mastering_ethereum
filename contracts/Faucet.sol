// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Faucet {

    function withdraw(uint amount) public {
        // check that amount is max 0.1 eth
        require(amount <= 100000000000000000);

        // sender = the one who triggers the contract
        // this statement transfers the required amount to
        // the sender
        payable(msg.sender).transfer(amount);
    }

    // receive any amount
    receive() external payable {}
}