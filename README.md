## EVO Command-line interface

```sh
EVO - EVO Command Line Interface

Special commands:

   --addr-of       Get address of id
   --uint-of       Get uint of id

Commands:

   apo             Apostle Management
   apo-auc         Apostle Auction Management
   apo-bas         Apostle Base Management
   apo-gen         Apostle Gen0 Management
   apo-sir         Apostle SiringAuction Management
   cmn             Common Management
   cmn-enc         Common Encoder Management
   cmn-loc         Common Location Management
   cmn-ownership   Common Ownership Management
   cmn-pts         Common Points Management
   cmn-reg         Common Registry Management
   cmn-tokenuse    Common Ownership Management
   fnc             Furnace Management
   fnc-box         Furnace Drill Lucky Box Management
   fnc-drl         Furnace Drill Base Management
   fnc-fml         Furnace fml Management
   fnc-itm         Furnace Drill Base Management
   fnc-tel         Furnace MetaData Teller Management
   fnc-tkd         Market Drill TakeBack Management
   help            Print help about evo(1) or one of its subcommands
   lnd             Land Management
   lnd-bar         Land Item Bar Management
   lnd-bas         Land Base Management
   lnd-mst         Land MysteriousTreasure Management
   lnd-res         Land Resource Management
   mkt             Market Management
   mkt-auc         Market Land Auction Management
   mkt-gen         Market Genesis Holder Management
   mkt-pts         Market Points Reward Pool Management
   mkt-rvn         Market Revenue Pool Management
   mkt-tk1         Market TakeBack Management
   mkt-tk2         Market TakeBack Management

Report bugs to <https://github.com/evolutionlandorg/evo-tools/issues>.
```

## Installation

Install Nix if you haven't already:

```
# user must be in sudoers
curl -L https://nixos.org/nix/install | sh

# Run this or login again to use Nix
. "$HOME/.nix-profile/etc/profile.d/nix.sh"
```

Then run via the installer:

```sh
$ curl https://gist.githubusercontent.com/hujw77/ce3d9ed102de1fa1c9eba7754459333a/raw/5ec0e1a2a249e77e87753f4317f642cdf75283be/install.sh | sh
```

## Configuration

`evo` is built on [Seth](https://github.com/dapphub/dapptools/tree/master/src/seth) and uses the same network configuration options, which just like Seth, can be defined in the `~/.sethrc` initialisation file.

Similar to Seth, `evo` also supports transaction signing with Ledger hardware wallets and can run against both local and remote nodes.

Since `evo` will always be used against a known deployment of the system, defaults can be loaded wherever possible. In most cases the only required configuration parameter is the `-C, --chain=<chain>` (`SETH_CHAIN`) option and `-F, --from=<address>` (`ETH_FROM`) sender account when not using a testnet.

Example `~/.sethrc`:

```sh
#!/usr/bin/env bash
export ETH_FROM=0x4Ffa8667Fe2db498DCb95A322b448eA688Ce430c
export SETH_CHAIN=crab
export ETH_PASSWORD="/home/user/evo/pass.txt"
export ETH_KEYSTORE="/home/user/.ethereum/keystore"
export ETH_RPC_URL="https://crab-rpc.darwinia.network"
```
