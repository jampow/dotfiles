if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias df='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export TERM=screen-256color
export BAT_THEME=Nord
export GPG_TTY=(tty)

set fish_greeting

set -gx GPG_TTY (tty)

source /opt/asdf-vm/asdf.fish
fish_add_path $HOME/.local/bin

# pnpm
set -gx PNPM_HOME "/home/gianpaulo/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end