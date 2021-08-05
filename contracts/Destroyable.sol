// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import './Owner.sol';

contract Destroyable is Owner {
    
    function destroy() public onlyOwner {
        selfdestruct(owner);
    }
}