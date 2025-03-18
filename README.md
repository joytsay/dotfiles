# dotfiles
---
- clone to `$HOME` directory
```sh
git clone https://github.com/joytsay/dotfiles.git
```
```sh
cd $HOME/dotfiles
```
- install stow
```sh
sudo apt-get install stow
```
- init stow for symlink
```sh
stow .
```
- stow individually, e.g.
```sh
stow tmux
```
```sh
stow zsh
```
```sh
stow nvim
```
