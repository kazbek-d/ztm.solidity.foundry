## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Install
To install Foundry, run the following commands. First, download and execute the installation script using `curl`:

```shell
curl -L https://foundry.paradigm.xyz | bash
```

Then, source your shell configuration file to apply the changes:

```shell
source /Users/kazbek/.bashrc
source /Users/anzhela/.zshenv'
```

Finally, update Foundry to ensure you have the latest version:

```shell
foundryup
```


### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>

$ source .env
$ forge script script/ERC20.s.sol:ERC20Script --rpc-url $SEPOLIA_RPC_URL --broadcast --verify
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
