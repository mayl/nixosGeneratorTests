{ sources ? import ../nix/sources.nix, ... }:
let
  devshell_overlay = import "${sources.devshell.outPath}/overlay.nix";
  pkgs = import sources.nixpkgs {
    overlays = [ devshell_overlay ];
  };
in
pkgs.devshell.mkShell {
  name = "test_devshell";
  imports = [ "${pkgs.devshell.extraModulesDir}/language/c.nix" ];
  devshell.packages = with pkgs; [
    hyperfine
  ];
}
