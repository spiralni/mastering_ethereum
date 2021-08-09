// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract HelloWorld {
    address payable owner;
    string greeting = "Hello World";

    constructor() {
        owner = payable(msg.sender);
    }

    // keyword view or constant means 
    // that the function does not modify the 
    // state tree or does not require a network transaction
    function greet() public view returns(string memory) {
        return greeting;
    }

    function kill() public {
        require(owner == msg.sender);
        selfdestruct(owner);
    }
}