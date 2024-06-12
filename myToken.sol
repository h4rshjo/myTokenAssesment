// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    // Public variables to store details about the token
    // 'tokenName' represents the name of the token
    string public tokenName = "META";

    // 'tokenAbbrv' represents the abbreviated name of the token
    string public tokenAbbrv = "MTA";

    // 'totalSupply' keeps track of the total supply of tokens in existence
    uint public totalSupply = 0;

    // Mapping to store balances of addresses
    // 'balances' maps an address to its respective token balance
    mapping(address => uint) public balances;

    // Mint function to create new tokens
    // @param _address: The address to which the minted tokens will be assigned
    // @param _value: The number of tokens to mint
    // This function increases the total supply by the specified amount
    // and increases the balance of the specified address by the same amount
    function mint(address _address, uint _value) public {
        // Increase the total supply by the specified amount
        totalSupply += _value;
        
        // Increase the balance of the recipient address
        balances[_address] += _value;
    }

    // Burn function to destroy tokens
    // @param _address: The address from which the tokens will be burned
    // @param _value: The number of tokens to burn
    // This function decreases the total supply by the specified amount
    // and decreases the balance of the specified address by the same amount
    function burn(address _address, uint _value) public {
        // Ensure the account has enough balance to burn
        require(balances[_address] >= _value, "Insufficient balance to burn");

        // Decrease the total supply by the specified amount
        totalSupply -= _value;
        
        // Decrease the balance of the sender address
        balances[_address] -= _value;
    }
}
