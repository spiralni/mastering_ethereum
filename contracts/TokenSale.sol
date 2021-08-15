// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TokenSale {
    enum State {
        Active,
        Suspended
    }

    address public owner;
    ERC20 public token;
    State public state;

    constructor(address tokenContractAddress) {
        owner = msg.sender;
        token = ERC20(tokenContractAddress);
        state = State.Active;
    }

    function buy() public payable {
        require(state == State.Active);
        token.transfer(msg.sender, msg.value);
    }

    function suspend() public {
        require(msg.sender == owner);
        state = State.Suspended;
    }

    function activate() public {
        require(msg.sender == owner);
        state = State.Active;
    }

    function withdraw() public {
        require(msg.sender == owner);
        owner.transfer(this.balance);
    }
}