```solidity
function transfer(address to, uint amount) public {
    require(balanceOf[msg.sender] >= amount, "Insufficient balance");
    balanceOf[msg.sender] -= amount;
    balanceOf[to] += amount;
    emit Transfer(msg.sender, to, amount);
}
```

This code has a potential integer overflow bug. If the `amount` is larger than `balanceOf[msg.sender]`, the subtraction `balanceOf[msg.sender] -= amount;` will underflow, resulting in a very large number being assigned to `balanceOf[msg.sender]`.  This could allow an attacker to create an arbitrarily large number of tokens.