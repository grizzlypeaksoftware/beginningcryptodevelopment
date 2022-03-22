// SPDX-License-Identifier: MIT

// basic ownership functions 
// 1) Ability to assert someone is an owner of a smart contract
// 2) Ability to restrict function calling to the contract owner
// 3) Ability to transfer ownership to another wallet

// advanced ownership functions
// 4) Ability to renounce a contract

pragma solidity ^0.8.0;

// Ownable.sol = provides contract ownership functions
abstract contract Ownable {

    address private _owner;

    constructor() {
        _owner = msg.sender;
    }

    function owner() public view virtual returns (address) {
        return _owner;
    }

    modifier onlyOwner() {
        require(owner() == msg.sender, "Ownership Assertion: Caller of the function is not the owner.");
        _;
    }

    function transferOwnership(address newOwner) public virtual onlyOwner {
        _owner = newOwner;
    }
}