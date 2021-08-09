{ pkgs ? import <nixpkgs> {}
, dappPkgs ? import (pkgs.fetchgit {
    url = "https://github.com/hujw77/dapptools";
    rev = "evo/0.0.2";
    sha256 = "0vwjhfkc4k5mpwj6p9b6c67sr2mzwajayijdwcqwcjgkg4kc67si";
    fetchSubmodules = true;
  }) {}
}:

dappPkgs.callPackage ./evo-cli.nix {}
