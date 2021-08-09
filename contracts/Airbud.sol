// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Airbud {
    // state variables forced to state
    address[] users;
    mapping(address => uint) public balances;

    function yelp() public payable {
        // msg.sender the one who invokes the trx
        // local variable defaults to storage
        address user = msg.sender;

        uint8[3] memory ids = [1, 2, 3];
    }

}