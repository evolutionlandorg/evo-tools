let
  sources = import ./nix/sources.nix;
  pkgs = import sources.dapptools {};
  evo-tools = pkgs.callPackage ./evo-cli.nix {};
in
{
  inherit evo-tools;
}
