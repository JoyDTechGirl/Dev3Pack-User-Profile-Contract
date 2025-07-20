# Dev3Pack - User Profile Smart Contract

This smart contract is built as part of the Solidity Fundamentals assignment for Week 1 (Lecture 2).

## 🚀 Features

- Allows users to register a profile with their `name`, `email`, `age`, and registration `timestamp`.
- Users can update their profile information.
- Users can fetch their own profile using a public `view` function.
- Prevents duplicate registration by checking if the user already exists.

## 🔧 Smart Contract Functions

### `register(string name, string email, uint age)`
Registers a new user with profile details. Fails if the user has already registered.

### `updateProfile(string name, string email, uint age)`
Allows an already registered user to update their profile info.

### `getProfile() public view returns (string, string, uint, uint)`
Fetches the calling user’s profile details, including their registration timestamp.

## 🧱 Tools Used

- Solidity ^0.8.30
- Remix IDE
- GitHub

## 📝 Author

Joy Ogbonna  
[@JoyDTechGirl](https://github.com/JoyDTechGirl)
