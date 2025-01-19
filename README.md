# Solidity Integer Overflow Vulnerability

This repository demonstrates a common integer overflow vulnerability in Solidity smart contracts and provides a solution.

## Vulnerability

The `transfer` function in `bug.sol` is susceptible to integer overflow. If an attacker attempts to transfer more tokens than the sender possesses, the subtraction operation underflows, leading to an unexpectedly high token balance for the sender. This allows the attacker to create more tokens than expected.

## Solution

The `bugSolution.sol` file shows a corrected version of the `transfer` function. It uses SafeMath to prevent integer overflow and underflow errors, ensuring the security of the transaction.