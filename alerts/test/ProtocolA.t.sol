// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
import {Test} from "forge-std/Test.sol";

contract ProtocolTest is Test {
    address protocol_address = 0xE5F4504067836CcF305aEbc2c254EB531466887c;
    Protocol protocol;

    function setUp() public {
        protocol = new Protocol();
    }

    function test_protocolA() public {
        uint256 a = protocol.get_test();
        vm.export("protocol.a", vm.toString(a));
        assert(a < 1000000000);
    }
}

contract Protocol {
    uint256 internal test;

    function get_test() public returns (uint256) {
        test += 1;
        return test;
    }

    function set_test(uint256 a) public {
        test = a;
    }
}
