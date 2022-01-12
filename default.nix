{ pkgs ? import <nixpkgs> {}
, dappPkgs ? import (pkgs.fetchgit {
    url = "https://github.com/hujw77/dapptools";
    branchName = "master";
    rev= "7a6e534e4dd9c37e0ec36840cbf7611548b5fbe6";
    fetchSubmodules = true;
  }) {}
}:

dappPkgs.callPackage ./evo-cli.nix {}
