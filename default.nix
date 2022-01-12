{ pkgs ? import <nixpkgs> {}
, dappPkgs ? import (pkgs.fetchgit {
    url = "https://github.com/hujw77/dapptools";
    branchName = "master";
    sha256 = "1wvcb80xqbv1hk4g357mdwlgzjw9piw0wri7krfbjyxygp6jxpq2";
    fetchSubmodules = true;
  }) {}
}:

dappPkgs.callPackage ./evo-cli.nix {}
