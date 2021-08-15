// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract VarDemo {
    uint8 vara; //0 -- 2^8
    int varb; // -2^8 -- 2^8 - 1

    /************************************************/

    function getBalance() public view returns(uint) {
        // balance of this contract
        // balance in wei 10^18
        return address(this).balance;
    }

    // Default function to accepts ethers for this contracts
    // mark function as payable to allow to receive or send ether
    receive() external payable {
        // msg.value is the amount received (in wei)
        uint balance = msg.value;
    }

    function withdrawAll() public {
        // msg.sender the one who invokes the contract
        // read: transfer balance to msg.sender
        payable(msg.sender).transfer(getBalance());
    }

    /************************************************/

    function divide() public pure returns(uint) {
        uint five = 5;
        uint two = 2;
        uint result = five / two; // expected 3
        return result;
    }

    function wrapAround() public pure returns(uint8) {
        uint8 zero = 0;
        zero--; // wrap to max 2**8-1 = 255
        return zero;
    }
}