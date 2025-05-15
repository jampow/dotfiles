# Dotfiles

## Install

Clone and as bare in your home dir, create the alias `df` to use this as a git
repository from anywhere and finally, checkout master branch.

```
git clone --bare https://github.com/jampow/dotfiles.git $HOME/.dotfiles
alias df='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
df checkout master
```

after configure a new ssh key or if you already have it

```
df remote set-url origin git@github.com:jampow/dotfiles.git
```

## Manual installations

- [font awesome](https://fontawesome.com/) - aditional font to be installed
- [get nerd font](https://github.com/getnf/getnf) - Tool to download nerd fonts

  - Firacode
  - Inconsola
  - Meslo

- [asdf-vm](https://github.com/asdf-vm/asdf) - Version manager

Download latest package at release page

- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager for fish

After fisher installation, execute the command below

```
df co ~/.config/fish/fish_plugins
fisher udpate
```

- [tpm](https://github.com/tmux-plugins/tpm) - TMUX plugih manager

After tpm installation, type `prefix` + `I`

- [lunar vim](https://www.lunarvim.org/) - editor de texto

Install lvim dependencies with `asdf`

```
asdf plugin add nodejs
asdf plugin add python
asdf plugin add rust
asdf plugin add golang

asdf install nodejs latest
asdf install python latest
asdf install rust latest
asdf install golang latest

asdf set -u nodejs latest
asdf set -u python latest
asdf set -u rust latest
asdf set -u golang latest
```

If hexokinase error shows up at start up, run command `:Lazy build vim-hexokinase`

