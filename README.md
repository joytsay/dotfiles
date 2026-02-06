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

- stow all packages for symlink

```sh
stow tmux zsh nvim fastfetch
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

```sh
stow fastfetch
```

- pre install packages

```sh

brew install lazygit

brew install powerlevel10k

git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions \
  ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting \
  ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

git clone --depth=1 https://github.com/jeffreytse/zsh-vi-mode \
  ~/.oh-my-zsh/custom/plugins/zsh-vi-mode

git clone --depth=1 https://github.com/romkatv/powerlevel10k \
  ~/.oh-my-zsh/custom/themes/powerlevel10k

\tsh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

