// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract EtherStore {
    uint public withdrawalLimit = 1 ether;
    mapping(address => uint) public lastWithdrawTime;
    mapping(address => uint) public balances;

    function depositFunds() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdrawFunds(uint weiToWithdraw) public {
        // check you have enough money to retrieve
        require(balances[msg.sender] >= weiToWithdraw);
        // check the maximum you can withdraw
        require(weiToWithdraw <= withdrawalLimit);
        // just one withdrawal per week
        require(block.timestamp >= lastWithdrawTime[msg.sender] + 1 weeks);
        
        balances[msg.sender] -= weiToWithdraw;
        lastWithdrawTime[msg.sender] = block.timestamp;

        payable(msg.sender).transfer(weiToWithdraw);
    }
}