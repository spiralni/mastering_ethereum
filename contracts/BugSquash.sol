// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract BugSquash {
    enum State {
        Alive,
        Squashed
    }

    State state;
    address payable owner;

    constructor() {
        state = State.Alive;
        owner = payable(msg.sender);
    }

    function squash() public {
        assert(owner != address(0));

        if (state == State.Alive) {
            state = State.Squashed;
        } else if (state == State.Squashed) {
            revert();
        }
    }

    function kill() public {
        require(owner == msg.sender);
        selfdestruct(owner);
    }
}