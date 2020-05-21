# <img src="https://aster879.com/images/Logo.png" alt="AsterCoin" height="40px">

[![Docs](https://img.shields.io/badge/docs-%F0%9F%93%84-blue)](https://aster879.com/docs/aster_eng_00001.pdf)
[![Docs](https://img.shields.io/badge/docs-%F0%9F%93%84-blue)](https://aster879.com/)

** AsterCoin is deployed to ropsten test network. [Check via Etherscan](https://ropsten.etherscan.io/token/0x618C15C714866A18Afab235b9d2B65971e438711) 
[Also, you can check AsterCoin on Mainnet via Etherscan.](https://etherscan.io/token/0x0eb3032bcAc2BE1fa95E296442F225edb80fc3CD) 

 * Implementations of standards like [ERC20](https://docs.openzeppelin.com/contracts/erc20) with openzeppelin

## Overview

### Installation

```console
$ git clone https://github.com/Tenspace/ATC_20200518.git
```

AsterCoin is implemented with OpenZeppelin Contracts features a [stable API](https://docs.openzeppelin.com/contracts/releases-stability#api-stability), which means Aster Coin contracts won't break unexpectedly when upgrading to a newer minor version.

### Usage

Once cloned, you need install some packages below:

```console
$ sudo apt-get update
$ sudo apt-get -y upgrade
$ sudo apt install -y build-essential

$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
$ sudo reboot
```

Please, wait few mininues, If turn on the run commands below:

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

After truffle init, There is created 'contract' directory, copy Migrations.sol, TokenLock.sol and AsterCoin.sol files into 'contract' directory.

Setting truffle-config.js

And deploy contract to network you want .

Every solidity contract set 'pragma solidity ^0.5.0' at first line. AsterCoin is implemented with solidity 0.5.0 like:
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
