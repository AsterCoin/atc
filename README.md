# <img src="https://aster879.com/images/Logo.png" alt="AsterCoin" height="40px">

[![Docs](https://img.shields.io/badge/docs-%F0%9F%93%84-blue)](https://aster879.com/docs/aster_eng_00001.pdf)
[![Docs](https://img.shields.io/badge/docs-%F0%9F%93%84-blue)](https://aster879.com/)

** AsterCoin is deployed to [Ropsten test network](https://ropsten.etherscan.io/token/0x618C15C714866A18Afab235b9d2B65971e438711). [You can also check AsterCoin on Mainet via Etherscan](https://etherscan.io/token/0x0eb3032bcAc2BE1fa95E296442F225edb80fc3CD). 

 * Implementations of [ERC20](https://docs.openzeppelin.com/contracts/erc20) with openzeppelin.

## Overview

### Installation

```console
$ git clone https://github.com/metaREXadmin/atc.git
```

AsterCoin in implemented with OpenZeppelin Contracts that features a [stable API](https://docs.openzeppelin.com/contracts/releases-stability#api-stability), which means that AsterCoin contracts will not break unexpectedly when upgrading to a newer version.


### Usage

Once cloned, you will need to install some packages below:

```console
$ sudo apt-get update
$ sudo apt-get -y upgrade
$ sudo apt install -y build-essential

$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
$ sudo reboot
```

Please wait a few minutes for it to turn on and run the commands below.

```console
$ nvm install v10.15.3
```

Installing Python 2.7:
```console
$ sudo apt-get install python2.7
$ sudo ln -s /usr/bin/python2.7 /usr/bin/python
```

Installing Truffle framework:
```console
$ npm install -g truffle@5.0.14
$ truffle version
Truffle v5.0.14 (core: 5.0.14)
Solidity v0.5.0 (solc-js)
Node v10.15.3
Web3.js v1.0.0-beta.37
```

Installing Ganache:
```console
$ npm install -g ganache-cli@6.4.3
```

Running ganache-cli
```console
$ ganache-cli --host 0.0.0.0
Ganache CLI v6.4.3 (ganache-core: 2.5.5)
```
Install MetaMask on your chrome browser.


Creating a skeleton through truffle init
```console
$ mkdir smartcontract
$ cd smartcontract

$ truffle init
$ npm init -y
$ npm i --save openzeppelin-solidity
```
After truffle init, ‘contract’ directory will have been created. Copy Migrations.sol, TokenLock.sol and AsterCoin.sol files into the ‘contract’ directory.

Setting truffle-config.js

And deploy the contract to the network you want.

All solidity contract sets ‘pragma solidity ^0.5.0’ on their first line. AsterCoin is implemented with solidity 0.5.0 like below:
```solidity
pragma solidity ^0.5.0;
```


## Features

#Safety ERC20 contracts with openzeppelin

This project is developed following our high standards for code quality and security. OpenZeppelin is based on include: security in depth, simple and modular code, clarity-driven naming conventions, comprehensive unit testing, pre-and-post-condition sanity checks, code consistency, and regular audits.

#Pausable

a pausable ERC20 token is a token that can be paused to prevent any transfers of the token when it is paused. This is very useful when you are doing something like an Initial Coin Offering (ICO).

#Airdrop

An airdrop is a distribution of a cryptocurrency token or coin, usually for free, to numerous wallet addresses. Airdrops are primarily implemented as a way of gaining attention and new followers, resulting in a larger user-base and a wider disbursement of coins.

#Time-locking

An extension to the ERC20 standard with methods for time-locking of tokens within a contract.

Only owner can use this functionality i.e in ower case if any other address invoke this function other than 0xca35b7d915458ef540ade6068dfe2f44e8fa733c then that will throw exception
to envoke this functionality you need to call lock_erc function with following ip:
a) total tokens you want to lock
b) total time in epoch you want to lock the contract till

## License

AsterCoin is released under the [MIT License](LICENSE).
