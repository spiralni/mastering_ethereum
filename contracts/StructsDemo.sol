// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// a struct is similar to struct in c or c#
contract StructsDemo {
    struct Profile {
        uint timestamp;
        uint counter;
    }

    mapping(address => Profile) public clients;

    
}