// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

contract SimpleStorage {
    uint256 public number;

    People[] public people;

    mapping(string => uint256) public nameTonumber;

    struct People {
        uint256 number;
        string name;
    }

    function store(uint256 _number) public virtual {
        number = _number;
        retrieve();
    }

    function retrieve() public view returns (uint256) {
        return number;
    }

    function addPerson(string memory _name, uint256 _number) public {
        people.push(People(_number, _name));
        nameTonumber[_name] = _number;
    }
}
