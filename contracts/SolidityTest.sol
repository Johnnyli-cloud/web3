// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SolidityTest {
    uint256 public storedData; // 状态变量

    function getResult() public pure returns (uint256) {
        uint256 a = 1; // 局部变量
        uint256 b = 2;
        uint256 result = a + b;
        return result; // 访问局部变量
    }
    
}
