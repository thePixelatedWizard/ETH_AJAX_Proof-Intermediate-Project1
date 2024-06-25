// SPDX-License-Identifier:UNLICENSED
pragma solidity 0.8.25;

contract Funds {
    mapping (address => uint) balances;

    function transfer(address other, uint amount) public {
        require(amount > 0, "Amount must be greater than 0");
        balances[msg.sender] -= amount;
        balances[other] += amount;
    }

    function withdraw(uint amount) public {
        assert(balances[msg.sender] >= amount);
        balances[msg.sender] -= amount;
    }

    function deposit(uint amount) public {
        if (amount <= 0) {
            revert("Negative Funds, failed to deposit");
        }
        balances[msg.sender] += amount;
    }
}