{ pkgs ? import <nixpkgs> {}
, dappPkgs ? import (pkgs.fetchgit {
    url = "https://github.com/hujw77/dapptools";
    branchName = "master";
    sha256 = "cVuTbr1oxB/zG+TGwqZYW8fKuAnJ4jfLxbVD/SgeTxI=";
    fetchSubmodules = true;
  }) {}
}:

dappPkgs.callPackage ./evo-cli.nix {}
