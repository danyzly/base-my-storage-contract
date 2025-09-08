// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyStorage {
    uint256 private number;

    event NumberUpdated(address indexed user, uint256 newNumber);

    function setNumber(uint256 newNumber) external {
        number = newNumber;
        emit NumberUpdated(msg.sender, newNumber);
    }

    function getNumber() external view returns (uint256) {
        return number;
    }
}
