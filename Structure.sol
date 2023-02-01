// SPDX-Lisence-Identifier: MIT
pragma solidity ^0.8.4;
contract Structure {
    struct Student {
        bytes name;
        uint age;
    }

    uint id = 124455;

    Student student;
    function initStudent(bytes memory name, uint age) external {
        Student storage _student = student;
        _student.name = name;
        _student.age = age;
    }

    function initStudent2() external{
        student.name = "Bob";
        student.age = 80;
    }
}