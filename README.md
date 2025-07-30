# dotHyprland
dotfiles for hyprland
btw just use stow :D

#### Dependencies
- Commit Mono Font

#### Tmux
Run this command to clone TPM:
```
mkdir -p ~/.local/bin/tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.local/bin/tmux/plugins/tpm
tmux source-file ~/dotHyprland/.config/tmux/tmux.conf
```

#### Stow
```
sudo pacman -S stow
cd dotHyprland
stow .
```
