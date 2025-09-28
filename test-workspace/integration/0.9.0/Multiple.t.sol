// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.0;

contract Foo_Test {
    function test_TestA_RevertWhen_AEquals0() external {
        // it should revert
    }

    modifier whenADoesNotEqual0() {
        _;
    }

    function test_TestA_WhenAIsOdd() external whenADoesNotEqual0 {
        // it should return 1
    }

    function test_TestA_WhenAIsNotOdd() external whenADoesNotEqual0 {
        // it should return 2
    }

    function test_TestB_RevertWhen_AEquals0() external {
        // it should revert
    }

    function test_TestB_WhenAIsOdd() external whenADoesNotEqual0 {
        // it should return 1
    }

    function test_TestB_WhenAIsNotOdd() external whenADoesNotEqual0 {
        // it should return 2
    }
}