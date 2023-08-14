// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";

contract KillProtocol is Script {
    address protocol_address = 0xE5F4504067836CcF305aEbc2c254EB531466887c;

    function run() public {
        Protocol protocol = Protocol(protocol_address);
        vm.createSelectFork("sepolia");
        vm.startBroadcast();
        protocol.set_test(1);
        vm.stopBroadcast();
        require(protocol.test() == 1);
    }
}

contract Protocol {
    uint256 public test;

    constructor() {
        test = 1;
    }

    function set_test(uint256 a) public {
        test = a;
    }
}
