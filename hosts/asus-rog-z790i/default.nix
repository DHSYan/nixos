{ config, pkgs, ... }: 
{
    imports = [
        ../../modules/nixsettings.nix
        ../../modules/systempkgs.nix
        ../../modules/x11.nix
        ../../modules/user.nix
        ../../modules/fonts.nix
        ../../modules/yubikey.nix
        ../../modules/systemsettings.nix
        ../../modules/sysenvvars.nix
        ./hardware-configuration.nix
    ];

    # bootloader 
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    networking.hostName = "nixos"; 
    services.xserver.videoDrivers = [ "nvidia" ];

    system.stateVersion = "23.11"; 
}

