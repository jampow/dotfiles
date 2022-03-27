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
git remote set-url git@github.com:jampow/dotfiles.git
```

## Some dependencies

to update thi list `yay -Qe`
```
alacritty
awesome-terminal-fonts
bat
bumblebee-status
code
cpanminus
dbus-python
discord
docker
docker-compose
firefox
fish
gcc
git
git-delta
google-chrome
google-chrome-beta
google-chrome-dev
jq
neofetch
neovim
nvm
playerctl
python-dbus-next
python-pip
python2-pip
rofi
ruby
spotify
spotifyd
tig
tmux
tree
vim
which
xclip
yay
zsh
```
teste
teste
