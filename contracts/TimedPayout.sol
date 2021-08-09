// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TimedPayout {
    uint start;

    constructor() {
        start = block.timestamp;
    }

    function claim() public {
        if (block.timestamp > start + 10 days) {
            // address(this) = address of the current contract
            // can use this.balance as an alias
            payable(msg.sender).transfer(address(this).balance);
        }
    }
}