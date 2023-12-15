// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    uint private number;

    function setNumber(uint _number) public {
        number = _number;
    }

    function getNumber() public view returns (uint) {
        return number;
    }
}
