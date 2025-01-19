```solidity
pragma solidity ^0.8.0;

library SafeMath {
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }
    // Other SafeMath functions (add, mul, div, mod) can be included here
}

contract MyToken {
    using SafeMath for uint256;

    mapping(address => uint256) public balanceOf;
    event Transfer(address indexed from, address indexed to, uint256 amount);

    function transfer(address to, uint256 amount) public {
        balanceOf[msg.sender] = balanceOf[msg.sender].sub(amount);
        balanceOf[to] += amount;
        emit Transfer(msg.sender, to, amount);
    }
}
```