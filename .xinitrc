[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

xset r rate 250 150
setxkbmap br
exec sway
