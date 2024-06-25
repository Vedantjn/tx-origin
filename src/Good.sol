// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Good {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function setOwner(address newOwner) public {
        require(tx.origin == owner, "Not owner");
        owner = newOwner;
    }
    
    // function setOwner(address newOwner) public {
    //     require(msg.sender == owner, "Not owner" );
    //     owner = newOwner;
    // }
}
