// SPDX-Lisence-Identifier: MIT
pragma solidity ^0.8.4;
contract FunctionTypes{
    uint256 public number = 5;

    function add() external {
        number = number + 1;
    }

    function addPure(uint256 newNumber) external pure returns(uint256 _newNumber) {
        _newNumber = newNumber + 1;
    }

    function addView() external view returns(uint256 _newNumber) {
        _newNumber = number + 1;
    }
    
    // internal函数只能被合约内的函数调用，通过定义一个external的函数来实现合约外调用
    function minus() internal {
        number = number - 1;
    }

    function minusCall() external {
        minus();
    }

    function minusPayable() external payable returns(uint256 balance) {
        minus();
        balance = address(this).balance;
    }
}