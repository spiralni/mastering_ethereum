// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract SimpleContract {
    uint256 private _var;

    function setVar(uint256 value) public {
        _var = value;
    }

    function getVar() public view returns(uint256) {
        return _var;
    }
}