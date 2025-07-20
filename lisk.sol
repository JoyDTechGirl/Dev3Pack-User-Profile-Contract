// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Dev3Paack {
    struct User {
        string name;
        string email;
        uint age;
        uint registrationTimestamp;
    }
    mapping(address => User) private users;
    // Track if user is registered;
    mapping(address => bool) private isRegistered;

    function register(string memory name, string memory email, uint age) public {
        require(!isRegistered[msg.sender]);
        users[msg.sender] = User({
            name: name,
            email: email,
            age: age,
            registrationTimestamp: block.timestamp
        });
        isRegistered[msg.sender] = true;
    }

    function updateProfile(string memory name, string memory email, uint age) public {
        require(isRegistered[msg.sender]);

        users[msg.sender].name = name;
        users[msg.sender].email = email;
        users[msg.sender].age = age;
        
    }

    function getProfile()public view returns(string memory, string memory, uint, uint){
        require(isRegistered[msg.sender]);
        User memory u = users[msg.sender];
        return(u.name, u.email, u.age, u.registrationTimestamp);
    }
}