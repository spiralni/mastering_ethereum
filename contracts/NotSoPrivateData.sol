// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract NotSoPrivateData {
    uint public money = 16;
    uint public constant lives = 100;
    string private password = "easy";
}