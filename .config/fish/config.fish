if status is-interactive
    # Commands to run in interactive sessions can go here
end

# enables fish vi mode
set -g fish_key_bindings fish_vi_key_bindings

set fish_greeting

alias df='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls='exa --icons'
alias la='ls -a'
alias cat='bat'

export TERM=screen-256color
export BAT_THEME=Nord
export GPG_TTY=(tty)

set fish_greeting

set -gx GPG_TTY (tty)

fish_add_path $HOME/.local/bin
fish_add_path $HOME/.config/rofi/scripts

# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims

set -gx EDITOR "nvim"
set -gx SUDO_EDITOR "lvim"

# pnpm
set -gx PNPM_HOME "/home/gianpaulo/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
end
abbr --add dotdot --regex '^\.\.+$' --function multicd
