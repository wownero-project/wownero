[![Build Status](https://ci.wownero.com/api/badges/wownero/wownero/status.svg)](https://ci.wownero.com/wownero/wownero)
# ~~Mo~~Wownero -  Such privacy! Many coins! Wow! 🐕

Copyright (c) 2014-2021 The Monero Project.   
Portions Copyright (c) 2012-2013 The Cryptonote developers.

## Resources

- Web: [wownero.org](https://wownero.org)
- Twitter: [@w0wn3r0](https://twitter.com/w0wn3r0)
- Reddit: [/r/wownero](https://www.reddit.com/r/wownero)
- Mail: [wownero@protonmail.com](mailto:wownero@protonmail.com)
- Git: [git.wownero.com/wownero/wownero](https://git.wownero.com/wownero/wownero)
- Wownero Funding System: [funding.wownero.com](https://funding.wownero.com)
- Wownero Forum: [forum.wownero.com](https://forum.wownero.com)
- Discord: [discord.gg/ENbgme4bWq](https://discord.com/invite/ENbgme4bWq)
- Telegram: [t.me/wownero](https://t.me/wownero)
- Feather-WOW Desktop Wallet: [featherwallet.org/wownero](https://featherwallet.org/wownero)
- WOW Stash Web Wallet: [wowstash.app](https://wowstash.app)
- Public Node Status: [monero.fail](https://monero.fail/?crypto=wownero)
- Map of Nodes: [wownero.fyi](https://wownero.fyi)
- Wownero Memes: [suchwow.xyz]https://suchwow.xyz/posts/top)
- XMR/WOW Swap: [nero Swap](https://neroswap.com)
- Mining Pools: [miningpoolstats.stream](https://miningpoolstats.stream/wownero)
- Market Info: [coinmarketcap.com](https://coinmarketcap.com/currencies/wownero), [coingecko.com](https://www.coingecko.com/en/coins/wownero/usd)

### Blockchain Explorers
- https://explore.wownero.com
- http://wow5eqtzqvsg5jctqzg5g7uk3u62sfqiacj5x6lo4by7bvnj6jkvubyd.onion
- https://wownero.club
- https://explorer.wownero.fyi

## Introduction

Wownero is a privacy-centric memecoin that was fairly launched on April 1, 2018 with no pre-mine, stealth-mine or ICO. Wownero has a maximum supply of around 184 million WOW with a slow and steady emission over 50 years. It is a fork of Monero, but with its own genesis block, so there is no degradation of privacy due to ring signatures using different participants for the same tx outputs on opposing forks.

## Supporting the project

Wownero is a 100% community-sponsored endeavor. Supporting services are also graciously provided by sponsors:

[<img src="https://git.wownero.com/wownero/meta/raw/branch/master/images/macstadium.png"
      alt="MacStadium"
      height="100">](https://www.macstadium.com)
[<img src="https://git.wownero.com/wownero/meta/raw/branch/master/images/jetbrains.png"
      alt="JetBrains"
      height="100">](https://www.jetbrains.com)

Developers are volunteers doing this mostly for shits and giggles. If you would like to support our shenanigans and stimulant addictions, please consider donating to [WFS proposals](https://funding.wownero.com/proposals) or the dev slush fund.

### Donation Addresses

WOW: `Wo3MWeKwtA918DU4c69hVSNgejdWFCRCuWjShRY66mJkU2Hv58eygJWDJS1MNa2Ge5M1WjUkGHuLqHkweDxwZZU42d16v94mP`

- view key: `e62e40bfd5ca7e3a7f199602a3c97df511780489e1c1861884b00c28abaea406`

XMR: `44SQVPGLufPasUcuUQSZiF5c9BFzjcP8ucDxzzFDgLf1VkCEFaidJ3u2AhSKMhPLKA3jc2iS8wQHFcaigM6fXmo6AnFRn5B`

- view key: `cb83681c31db0c79adf18f25b2a6d05f86db1109385b4928930e2acf49a3ed0b`

BTC: `bc1qcw9zglp3fxyl25zswemw7jczlqryms2lsmu464`

## Release staging and Contributing

**Anyone is welcome to contribute to Wownero's codebase!** 

If you have a fix or code change, feel free to submit it as a pull request. Ahead of a scheduled software upgrade, a development branch will be created with the new release version tag. Pull requests that address bugs should be made to Master. Pull requests that require review and testing (generally, optimizations and new features) should be made to the development branch. All pull requests will be considered safe until the US dollar valuation of 1 Wownero equals $1000. After this valuation has been reached, more research will be needed to introduce experimental cryptography and/or code into the codebase.

Things to Do, Work in Progress, and Help Wanted tasks are tracked in the [Meta](https://git.wownero.com/wownero/meta/issues) repo. 

Join `#wownero-dev` on IRC freenode to participate in development conversation.

## Scheduled software upgrades

Wownero uses a fixed-schedule software upgrade (hard fork) mechanism to implement new features. This means that users of Wownero (end users and service providers) should run current versions and upgrade their software on a regular schedule. The required software for these upgrades will be available prior to the scheduled date. Please check the repository prior to this date for the proper Wownero software version. Below is the historical schedule and the projected schedule for the next upgrade.
Dates are provided in the format YYYY-MM-DD. 

| Software upgrade block height | Date       | Release Name | Minimum Wownero version | Recommended Wownero version | Details                                                                            |  
| ------------------------------ | -----------| ----------------- | ---------------------- | -------------------------- | ---------------------------------------------------------------------------------- |
| 1                              | 2018-04-01 | Awesome Akita                | v0.1.0.0               | v0.1.0.0                  | Cryptonight variant 1, ringsize >= 8, sorted inputs
| 69,69                           | 2018-04-24 | Busty Brazzers                | v0.2.0.0               | v0.2.0.0                  | Bulletproofs, LWMA difficulty algorithm, ringsize >= 10, reduce unlock to 4
| 53,666                          | 2018-10-06 | Cool Cage                | v0.3.0.0               | v0.3.1.3                  | Cryptonight variant 2, LWMA v2, ringsize = 22, MMS
| 63,469                          | 2018-11-11 | Dank Doge               | v0.4.0.0               | v0.4.0.0                  | LWMA v4
| 81,769                          | 2019-02-19 | Erotic EggplantEmoji    | v0.5.0.0               | v0.5.0.2                  | Cryptonight/wow, LWMA v1 with N=144, Updated Bulletproofs, Fee Per Byte, Auto-churn
| 114,969                          | 2019-06-14 | F For Fappening    | v0.6.1.0               | v0.6.1.2                  | RandomWOW, new block weight algorithm, slightly more efficient RingCT format
| 160,777                          | 2019-11-20 | Gaping Goatse    | v0.7.0.0               | v0.7.1.0                  | Only allow >= 2 outputs, change to the block median used to calculate penalty, rct sigs in coinbase forbidden, 4 unlock time as protocol rule
| -                         | 2020-06-28 | Hallucinogenic Hypnotoad  | v0.8.0.0               | v0.8.0.2                  | Dandelion++ support
| 253,999                         | 2020-10-09 | Illiterate Illuminati  | v0.9.0.0               | v0.9.2.2                  | Dynamic coinbase unlock (up to 1 mo.), Deterministic unlock times, Enforce maximum coinbase amount, show_qr_code wallet command, CLSAG

X's indicate that these details have not been determined as of commit date.

\* indicates estimate as of commit date

## Installing from a package

Packages are available for

* Arch Linux/Manjaro

        yay -S wownero-git

* Gentoo - Russian hacking tool

        emerge --noreplace eselect-repository
        eselect repository enable monero
        emaint sync -r monero
        echo '*/*::monero ~amd64' >> /etc/portage/package.accept_keywords
        emerge net-p2p/wownero

* NixOS

        nix-shell -p wownero

* Ubuntu 18.04/Ubuntu 16.04/Debian 9/Debian 8 (amd64)

        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8BC34ABB48E565F0
        sudo add-apt-repository "deb http://ppa.wownero.com/ bionic main"
        sudo apt-get update
        sudo apt-get install wownero

Packaging for your favorite distribution would be a welcome contribution!

**DISCLAIMER: These packages are not part of this repository, and as such, do not go through the same review process to ensure their trustworthiness and security.**


## Building from Source

* Docker

        git clone https://git.wownero.com/wownero/wownero && cd wownero
        docker build -t git-wow:master -m 4g .
        docker run -it -p 34567:34567 -p 34568:34568 -w /home/wownero/build/release/bin git-wow:master bash

* Arch Linux/Manjaro

        sudo pacman -Syu && sudo pacman -S base-devel cmake boost openssl zeromq libpgm unbound libsodium git libusb systemd
        git clone https://git.wownero.com/wownero/wownero && cd wownero
        make -j2

* Debian/Ubuntu

        sudo apt update && sudo apt install build-essential cmake pkg-config libboost-all-dev libssl-dev libzmq3-dev libunbound-dev libsodium-dev libunwind8-dev liblzma-dev libreadline6-dev libldns-dev libexpat1-dev libpgm-dev libhidapi-dev libusb-1.0-0-dev libprotobuf-dev protobuf-compiler libudev-dev git -y
        git clone https://git.wownero.com/wownero/wownero && cd wownero
        make -j2


## Running Binaries

The build places the binary in `bin/` sub-directory within the build directory
from which cmake was invoked (repository root by default). To run in the
foreground:

    ./bin/wownerod

To list all available options, run `./bin/wownerod --help`.  Options can be
specified either on the command line or in a configuration file passed by the
`--config-file` argument.  To specify an option in the configuration file, add
a line with the syntax `argumentname=value`, where `argumentname` is the name
of the argument without the leading dashes, for example, `log-level=1`.

To run in background:

    ./bin/wownerod --log-file wownerod.log --detach

To run as a systemd service, copy
[wownerod.service](utils/systemd/wownerod.service) to `/etc/systemd/system/` and
[wownerod.conf](utils/conf/wownerod.conf) to `/etc/`. The [example
service](utils/systemd/wownerod.service) assumes that the user `wownero` exists
and its home is the data directory specified in the [example
config](utils/conf/wownerod.conf).

Once node is synced to network, run the CLI wallet by entering:

    ./bin/wownero-wallet-cli

Type `help` in CLI wallet to see standard commands (for advanced options, type `help_advanced`).

## Tor Anonymity Network

* Install [Tor Browser](https://www.torproject.org/download/)
* Open `torrc` file in a text editor ([installation directory]/Browser/TorBrowser/Data/Tor/torrc) and add hidden service information as follows:

```
HiddenServiceDir [installation directory]/Browser/TorBrowser/Data/Tor/wow_node
HiddenServiceVersion 3
HiddenServicePort 44568 127.0.0.1:44568
```
* Save `torrc` file and restart Tor Browser (keep open)
* Change directory to the `wow_node` folder, open `hostname` file, and copy your node's ".onion" address
* Start wownerod with the following parameters:

```
./wownerod --tx-proxy tor,127.0.0.1:9150,10 --add-peer hdps3qwnusz64r7odvynmae6myc2uyvrsc2emap6636qeuzll72eouid.onion:44568 --anonymous-inbound YOUR_NODE_ADDRESS.onion:44568,127.0.0.1:44568,25
```

### Access remote Tor node from CLI wallet

```
./wownero-wallet-cli --proxy 127.0.0.1:9150 --daemon-address wow7dhbgiljnkspkzpjyy66auegbrye2ptfv4gucgbhireg5rrjza5ad.onion:34568
```

Use port `9050` instead of `9150` if you installed Tor as a standalone daemon. For more information, check out [ANONYMITY_NETWORKS](https://git.wownero.com/wownero/wownero/src/branch/master/ANONYMITY_NETWORKS.md).
