# memeCoin LaunchPad

A simple launchpad for deploying meme coins on Ethereum using Solidity smart contracts.

## Project Structure

```
web3/
  contracts/
    Factory.sol   # Factory contract to deploy new meme coins and manage sales
    Token.sol     # ERC20 token contract for meme coins
  test/
    factory.js    # Hardhat/Chai tests for Factory contract
```

## Contracts

### Factory.sol

- Deploys new ERC20 meme coins via the `create` function.
- Tracks deployed token addresses and manages token sales.
- Handles buying tokens with dynamic pricing (price increases as more tokens are sold).
- Manages sale state (open/closed), ETH raised, and token distribution.
- Allows creators to claim raised ETH and unsold tokens after the sale ends.
- Owner can withdraw collected fees.

### Token.sol

- Standard ERC20 token using OpenZeppelin implementation.
- Tracks creator and owner.
- Minted with a fixed supply (1,000,000 tokens).

## Testing

- Uses Hardhat and Chai for testing.
- Tests cover deployment, token creation, buying, sale closure, deposits, and fee withdrawal.
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

## Key Features

- **Dynamic Token Pricing:** Token price increases as more tokens are sold.
- **Sale Management:** Each token sale tracks amount sold, ETH raised, and sale status.
- **Creator Withdrawals:** After sale ends, creators can claim unsold tokens and raised ETH.
- **Owner Fees:** Factory owner can withdraw collected fees.

## License