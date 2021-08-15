// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract MappingDemo {
    // mapping is a hashmap
    // mapping are initizilized by default
    mapping(uint => bool) public map;

    function setValue(uint _val) public {
        // mapping is accessing using []
        map[_val] = true;
    }
}