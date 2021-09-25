{ sources ? import nix/sources.nix }:
let
  pkgs = import sources.nixpkgs {};
  nixos-generators = import sources.nixos-generators;
in
with pkgs;
mkShell {
  buildInputs = [
    vagrant
    nixos-generators
  ];
}
