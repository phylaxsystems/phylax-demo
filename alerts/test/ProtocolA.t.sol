// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
import {Test} from "forge-std/Test.sol";

contract ProtocolTest is Test {
    address protocol_address = 0xE5F4504067836CcF305aEbc2c254EB531466887c;
    Protocol protocol;

    function setUp() public {
        string memory url = vm.rpcUrl("sepolia");
        uint256 id = vm.createFork(url);
        protocol = Protocol(protocol_address);
        vm.selectFork(id);
    }

    function test_isTestVarOk() public {
        assertEq(protocol.test(), 1);
    }
}

contract Protocol {
    uint256 public test;

    function set_test(uint256 a) public {
        test = a;
    }
}
