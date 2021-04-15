pragma solidity ^0.4.24;

import "./StandardToken.sol";

contract TransToken is StandardToken {
    string public constant symbol = "TKT";
    string public constant name = "TransToken";
    uint256 public constant decimal = 18;
    
    uint256 internal constant tokenUnit = 10**18;
    uint256 internal constant oneBillion = 10**9;
    uint256 internal constant maxTokens = 2 * oneBillion * tokenUnit;
    
    constructor() public {
        totalSupply_ = maxTokens;
        balances[msg.sender] = maxTokens;
    }
    }
    
