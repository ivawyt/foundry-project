// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage storageContract;

    function setUp() public {
        storageContract = new SimpleStorage();
    }

    function testInitialNumber() public {
        assertEq(storageContract.getNumber(), 0, "Initial number is not 0");
    }

    function testSetNumber() public {
        storageContract.setNumber(10);
        assertEq(storageContract.getNumber(), 10, "Number was not updated correctly");
    }
}
