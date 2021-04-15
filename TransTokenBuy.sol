pragma solidity ^ 0.4.24;

import "./CappedCrowdsale.sol";

contract TransTokenBuy is CappedCrowdsale {
    uint256 internal constant ethCap = 10000 ether;
    uint256 internal constant oneEthToTokens = 10000;
    
    constructor(address _wallet, ERC20 _token) public
    Crowdsale(oneEthToTokens, _wallet, _token)
    CappedCrowdsale(ethCap)
    {
}
}
