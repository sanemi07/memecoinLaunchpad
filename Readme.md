# memeCoin LaunchPad

A simple launchpad for deploying meme coins on Ethereum using Solidity smart contracts.

## Project Structure

```
web3/
  contracts/
    Factory.sol   # Factory contract to deploy new meme coins
    Token.sol     # ERC20 token contract for meme coins
  test/
    factory.js    # Hardhat/Chai tests for Factory contract
```

## Contracts

### Factory.sol

- Deploys new ERC20 meme coins via the `create` function.
- Tracks deployed token addresses.
- Owner and fee logic included.

### Token.sol

- Standard ERC20 token with OpenZeppelin implementation.
- Tracks creator and owner.

## Testing

- Uses Hardhat and Chai for testing.
- Run tests with:

  ```bash
  npx hardhat test
  ```

## Getting Started

1. Install dependencies:

    ```bash
    npm install
    ```

2. Compile contracts:

    ```bash
    npx hardhat compile
    ```

3. Run tests:

    ```bash
    npx hardhat test
    ```

## License