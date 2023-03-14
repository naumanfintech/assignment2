pragma solidity ^0.8.0;

contract StructMappingDemo {
    struct Person {
        string name;
        uint256 age;
        address wallet;
    }

    mapping(address => Person) private people;

    function addPerson(string memory name, uint256 age) public {
        require(people[msg.sender].age == 0, "Person already exists.");
        people[msg.sender] = Person(name, age, msg.sender);
    }

    function getPerson(address wallet) public view returns (string memory, uint256, address) {
        require(people[wallet].age != 0, "Person does not exist.");
        return (people[wallet].name, people[wallet].age, people[wallet].wallet);
    }
}
