# ETH+AJAX Proof Intermediate Project 1
It is a simple smart contract that implements the `require()`, `assert()` and `revert()` functionality
of solidity programming language.

## Description
In this project I have created a smart contract called **Funds**. This smart contract consists of 3 functions
and 1 state variable. 

The state variable `balances` is a mapping between address and the funds owned
by the address owner. The first function `transfer` allows the transferring of funds between two address. This
function is used to showcase the `require()` function to check if enough are available funds before
doing any transfer. The second function `withdraw` is used to withdraw funds associated with any address.
Before withdrawing any funds we `assert()` whether the required amount of funds are available or not.
The final function `deposit` is useful to add funds. It uses a conditional statement to check whether
the amount to be deposited is not negative (i.e <= 0). If it is negative then we use the `revert()`
function to cancel the execution of next statements.

## Getting Started
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix 
website at https://remix.ethereum.org/. Once you are on the Remix website, create a new file by 
clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension. Copy and paste
the code is main.sol file into the newly created file. Next from the sidebar go the the compiler tab
and compile the contract. Finally in the deploy tab, deploy the smart contract and interact with it.

## LICENSE
This project is unlicensed.