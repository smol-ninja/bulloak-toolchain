// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.0;

contract FooTest_Test {
    function test_RevertWhen_AEquals0() external {
        // it should revert
    }

    modifier whenADoesNotEqual0() {
        _;
    }

    function test_WhenAIsOdd() external whenADoesNotEqual0 {
        // it should return 1
    }

    function test_WhenAIsNotOdd() external whenADoesNotEqual0 {
        // it should return 2
    }
}
