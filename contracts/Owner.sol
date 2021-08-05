// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Owner {
    address payable owner;

    constructor() {
        owner = payable(msg.sender);
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}
