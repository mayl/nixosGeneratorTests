{ config, lib, pkgs, ... }:
let
  devEnv = import devEnv.nix;
in
{
  environment.systemPackages = with pkgs; [ 
    vim
    devEnv
  ];
}
