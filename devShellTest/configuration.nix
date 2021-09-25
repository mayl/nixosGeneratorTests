{ config, lib, pkgs, ... }:
let
  devEnv = import ./devEnv.nix{};
  devEnvSh = pkgs.writeShellScriptBin "devEnv" ''
    PRJ_ROOT=$(pwd) ${devEnv.out}/entrypoint
    '';
in
{
  environment.systemPackages = with pkgs; [ 
    vim
    devEnvSh
  ];
}
