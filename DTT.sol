pragma solidity ^0.6.0;

contract DTToken{

    string  public name = "Transport Token";                        // Token name for display
    string  public symbol = "DTT";                            // Token Symbol for display
    uint256 public totalSupply_ = 10000000;   //total supply (100000 for example)
    uint8   public decimals = 8;                              // Amount of decimals for display purposes


    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );


    event Approval(
        address indexed _owner,
        address indexed _spender,
        uint256 _value
    );

    mapping(address => uint256) public balances;
    mapping(address => mapping(address => uint256)) public allowed;

    constructor() public {
        balances[msg.sender] = totalSupply_;
    }
    // display total amount of tokens
    function totalSupply() public view returns (uint256) {
        return totalSupply_;
    }

    // @param _owner The address from which the balance will be retrieved
    // @return The balance
    function balanceOf(address _owner) public view returns (uint256) {
        return balances[_owner];
    }
    
    // @notice send `_value` token to `_to` from `msg.sender`
    // @param _to The address of the recipient
    // @param _value The amount of token to be transferred
    // @return Whether the transfer was successful or not
    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balances[msg.sender] >= _value);
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

}