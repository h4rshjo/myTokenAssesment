# myTokenAssesment

Overview
The MyToken smart contract is an ERC20-like token implemented in Solidity. The token is named "META" with the abbreviation "MTA." This contract includes basic functionality for minting new tokens and burning existing tokens. The total supply of tokens and individual balances of addresses are tracked within the contract.

Contract Details
Token Information
Token Name: META
Token Abbreviation: MTA
Total Supply: Initially set to 0, and increases as new tokens are minted.
Public Variables
tokenName: Represents the name of the token. It is set to "META."
tokenAbbrv: Represents the abbreviated name of the token. It is set to "MTA."
totalSupply: Keeps track of the total supply of tokens in existence.
balances: A mapping that stores the balances of addresses.
Functions
mint(address _address, uint _value)
This function allows for the creation of new tokens.

Parameters:

_address: The address to which the minted tokens will be assigned.
_value: The number of tokens to mint.
Behavior:

Increases the totalSupply by the specified _value.
Increases the balance of the specified _address by the same amount.
burn(address _address, uint _value)
This function allows for the destruction of existing tokens.

Parameters:

_address: The address from which the tokens will be burned.
_value: The number of tokens to burn.
Behavior:

Ensures the _address has a sufficient balance to burn the specified _value.
Decreases the totalSupply by the specified _value.
Decreases the balance of the _address by the same amount.
