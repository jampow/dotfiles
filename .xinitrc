[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

xset r rate 250 50
setxkbmap br
exec i3
