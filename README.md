# nixos

NixOS related stuff I found useful to setup my hardware.

- Favorite beginner friendly Gentoo handbook stle installation guide: https://qfpl.io/posts/installing-nixos/

- `cat configs/undervolt.nix` shows how to create a systemd service to undervolt the cpu/gpu

### Update packages:

1. Check if you're on the latest channel `sudo nix-channel --list`
2. Update the selected channel `sudo nix-channel --update`
3. Update the packages `sudo nixos-rebuild switch`
