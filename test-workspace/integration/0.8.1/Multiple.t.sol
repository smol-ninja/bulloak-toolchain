// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.0;

contract Foo_Test {
    function test_TestARevertWhen_AEquals0() external {
        // it should revert
    }

    modifier whenADoesNotEqual0() {
        _;
    }

    function test_TestAWhenAIsOdd() external whenADoesNotEqual0 {
        // it should return 1
    }

    function test_TestAWhenAIsNotOdd() external whenADoesNotEqual0 {
        // it should return 2
    }

    function test_TestBRevertWhen_AEquals0() external {
        // it should revert
    }

    function test_TestBWhenAIsOdd() external whenADoesNotEqual0 {
        // it should return 1
    }

    function test_TestBWhenAIsNotOdd() external whenADoesNotEqual0 {
        // it should return 2
    }
}