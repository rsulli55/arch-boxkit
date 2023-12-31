# arch-boxkit

## Description

An arch OCI image for distrobox built from [boxkit](https://github.com/ublue-os/boxkit)


## Included Packages
  - `starship` prompt for that <3
  - `just` for task execution
  - `chezmoi` for dotfile management
  - `btop` for process management
  - `micro` and `helix` text editors
  - [clipboard](https://github.com/Slackadays/Clipboard) to cut, copy, and paste anything, anywhere, all from the terminal! 
  - `python3` 
  - Some common power tools: `plocate`, `fzf`, `cosign`, `ripgrep`, `github-cli`, and `ffmpeg`
  - CLI tools recommended by [rawkode](https://www.youtube.com/watch?v=TNlDSG1iDW8)
    - [zellij](https://github.com/zellij-org/zellij) - terminal workspace
    - [direnv](https://direnv.net/) - environment variable extension for your shell 
    - [atuin](https://github.com/ellie/atuin) - magical shell history
- Host Management QoL
  - These are meant for occasional one off commands, not complex workflows
    - Auto symlink the flatpak, podman, and docker commands
    - Auto symlink rpm-ostree for Fedora
    - Auto symlink transactional-update for openSUSE MicroOS

## How to use

### Create Box

If you use distrobox:

    distrobox create -i ghcr.io/ublue-os/boxkit -n boxkit
    distrobox enter boxkit
    
If you use toolbx:

    toolbox create -i ghcr.io/ublue-os/boxkit -c boxkit
    toolbox enter boxkit

### Pull down your config

Use `chezmoi` to pull down your dotfiles and set up git sync.

