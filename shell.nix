{ sources ? import nix/sources.nix }:
let
  pkgs = import sources.nixpkgs {};
  pkgs_path = sources.nixpkgs.outPath;
  nixos-generators = import sources.nixos-generators;
in
with pkgs;
mkShell {
  buildInputs = [
    vagrant
    nixos-generators
  ];
  shellHook = ''
    export NIX_PATH="nixpkgs=${pkgs_path}"
  '';
}
