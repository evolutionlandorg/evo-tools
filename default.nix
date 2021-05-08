{ pkgs ? import <nixpkgs> {}
, dappPkgs ? import (pkgs.fetchgit {
    url = "https://github.com/hujw77/dapptools";
    rev = "evo/0.0.1";
    sha256 = "131pzawyyhlapjhrzjl4d3byigvc38y4b51yvzams8k85b98iw18";
    fetchSubmodules = true;
  }) {}
}:

dappPkgs.callPackage ./evo-cli.nix {}
