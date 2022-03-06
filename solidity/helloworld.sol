// SPDX-License-Identifier: MIT
// pragma statement - indicates which version of the solidity compiler to use.
pragma solidity ^0.8.12;

// create a contract called HelloWorld
contract HelloWorld{

    // data type bytpes32 is typicall used for string,
    // string type is also available but bytes32 reserves less space.
    // blockchain storage is expensive, so we keep the contracts as lean as possible.
    bytes32 message;

    // construtor method
    // runs once, when the contract is created (deployed to the blockchain)
    // used to initialize contract state variables.
    constructor(bytes32 myMessage){

        // set default message to the value passed to the constructor
        message = myMessage;
    }

    // create a function on the smart contract that returns the message
    // publicly executable method
    // using the 'view' modifier tells the compiler that this function does not save state 
    function getMessage() public view returns(bytes32) {
        return message;
    }
}