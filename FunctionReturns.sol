// SPDX-Lisence-Identifier: MIT
pragma solidity ^0.8.4;
contract FunctionReturns {
    function funcReturnMul1() public pure returns(uint256, bool, uint256[3] memory) {
        return(1, true, [uint256(100), 188, 208]);
    }

    function funcReturnMul2() public pure returns(uint num1, bool num2, uint256[3] memory arr) {
        num1 = 111;
        num2 = false;
        arr = [uint256(2), 3, 4];
    }

    // 解构
    function readReturns() public pure {
        uint256 _num1;
        bool _num2;
        uint256[3] memory _arr;
        bool _num3;

        (_num1, _num2, _arr) = funcReturnMul1();
        (, _num3, ) = funcReturnMul2(); 
    }
}