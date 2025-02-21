# My Dotfiles
Currently included: `zshrc`, `alacritty`, `nvim`, `tmux`, `p10k`

Dotfile `zshrc` contains configuration specific for MacOS.

The following symlinks should be created so that the system can use them:
```[zsh]
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/alacritty ~/.config/alacritty
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/tmux ~/.config/tmux
ln -s ~/dotfiles/.p10k.zsh ~/.p10k.zsh
```
