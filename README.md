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
