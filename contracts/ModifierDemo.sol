// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract ModifierDemo {
    uint public vara;
    uint public varb;
    bool writable;

    modifier mustBeWritable() {
        require(writable);
        // _; is a placeholder for the function body
        _;
    }

    function setWritable(bool _writable) public {
        writable = _writable;
    }

    function updateVarA(uint _val) public mustBeWritable {
        vara = _val;
    }

    function updateVarB(uint _val) public {
        varb = _val;
    }
}