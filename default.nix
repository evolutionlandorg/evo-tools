{ pkgs ? import <nixpkgs> {}
, dappPkgs ? import (pkgs.fetchgit {
    url = "https://github.com/hujw77/dapptools";
    branchName = "master";
    sha256 = "0xbz1kcqf2q59krpk1xi94p3m0bqjkcbispxgib0qs68dmmk1zzq";
    fetchSubmodules = true;
  }) {}
}:

dappPkgs.callPackage ./evo-cli.nix {}
