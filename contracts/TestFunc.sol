// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// 函数类型
contract TestFunc {

  function a(uint x) external pure returns (uint z) {
        return x * x;
    }

    function b(uint x) external pure returns (uint z) {
        return 2 * x;
    }

    function getSelector() external pure returns (bytes4) {
    return this.b.selector; // 返回函数a的选择器
}
    // bytes4 selector = bytes4(keccak256("a(uint256)"));

    // 动态调用函数选择器
    function select(bytes4 selector, uint x) external returns (uint z) {
    (bool success, bytes memory data) = address(this).call(abi.encodeWithSelector(selector, x));
    require(success, "Function call failed");
    z = abi.decode(data, (uint));
}

}