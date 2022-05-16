{ pkgs ? import <nixpkgs> {}
, dappPkgs ? import (pkgs.fetchgit {
    url = "https://github.com/hujw77/dapptools";
    branchName = "master";
    sha256 = "1vi7v2a8my7lmh9y84pld2lkml0hi2l4d6n47fw4kycpznlfc7ly";
    fetchSubmodules = true;
  }) {}
}:

dappPkgs.callPackage ./evo-cli.nix {}
