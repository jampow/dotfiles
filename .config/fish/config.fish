if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias df='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export TERM=screen-256color
export BAT_THEME=Nord
export GPG_TTY=(tty)

set fish_greeting

source /opt/asdf-vm/asdf.fish
fish_add_path $HOME/.local/bin
