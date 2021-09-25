{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [ 
    vim
    emacs
    cowsay
  ];
}
