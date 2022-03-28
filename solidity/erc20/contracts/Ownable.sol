    // SPDX-License-Identifier: MIT

    // Ownable.sol

    pragma solidity ^0.8.12;

    // Ownable.sol = provides contract ownership functions
    abstract contract Ownable {

        address private _owner;

        event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

        constructor() { 
            _owner = msg.sender;
        }

        function owner() public view virtual returns (address) {
            return _owner;
        }

        function transferOwnership(address newOwner) public virtual onlyOwner{
            require(newOwner != address(0), "Ownable: new owner is the zero address");
            _transferOwnership(newOwner);
        }

        function _transferOwnership(address newOwner) internal virtual{
            address oldOwner = _owner;
            _owner = newOwner;
            emit OwnershipTransferred(oldOwner, newOwner);
        }

        modifier onlyOwner() {
            require(owner() == msg.sender, "Ownership Assertion: Caller is not the owner.");
            _;
        }
    }