pragma solidity ^0.8.0;

contract EventDemo {
    event NewUser(address indexed userAddress, string name, uint256 age);

    struct User {
        string name;
        uint256 age;
    }

    mapping(address => User) private users;

    function addUser(string memory name, uint256 age) public {
        require(bytes(name).length > 0, "Name is required.");
        require(age > 0, "Age must be greater than zero.");
        users[msg.sender] = User(name, age);
        emit NewUser(msg.sender, name, age);
    }

    function getUser(address userAddress) public view returns (string memory, uint256) {
        require(bytes(users[userAddress].name).length > 0, "User does not exist.");
        return (users[userAddress].name, users[userAddress].age);
    }
}
