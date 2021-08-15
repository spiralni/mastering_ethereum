// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Roulette {
    mapping(address => uint) balances;

    function betRed() public payable {
        bool winner = (randomNumber() % 2 == 0);

        if (winner) {
            balances[msg.sender] += msg.value * 2;
        }
    }

    function randomNumber() private pure returns(uint) {
        return 0;
    }

    function withdraw() public {
        uint amount = balances[msg.sender];
        balances[msg.sender] = 0;
        payable(msg.sender).transfer(amount);
    }

}