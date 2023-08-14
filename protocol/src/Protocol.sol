// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Protocol {
    uint256 public test;

    constructor() {
        test = 1;
    }

    function set_test(uint256 a) public {
        test = a;
    }
}
