// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SolidityTest {
    uint256 storedData; // 状态变量

    constructor() public {
        storedData = 10; // 使用状态变量
    }
}
