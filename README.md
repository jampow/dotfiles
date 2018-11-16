# Nova instalação

```
git clone --bare git@github.com:jampow/dotfiles.git $HOME/.dotfiles
alias dfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dfiles checkout master
```
