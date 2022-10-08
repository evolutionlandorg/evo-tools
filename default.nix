{ pkgs ? import <nixpkgs> {}
, dappPkgs ? import (pkgs.fetchgit {
    url = "https://github.com/hujw77/dapptools";
    branchName = "evo/0.0.3";
    sha256 = "140apalhrp4njcyh2r79393jfzisivi8vjxirgcp0x792kavbkyr";
    fetchSubmodules = true;
  }) {}
}:

dappPkgs.callPackage ./evo-cli.nix {}
