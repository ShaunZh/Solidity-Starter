// SPDX-Lisence-Identifier: MIT
pragma solidity ^0.8.4;
contract VarialStorage {
    uint[] x = [1,2,3];

    function fStorage() public {
        uint[] storage xStorage = x;
        xStorage[0] = 10;
    }

    function fMemory() public {
        uint[] memory  xMemory = x;
        xMemory[2] = 100;
    }
}