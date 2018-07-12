#[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
start-pulseaudio-x11
urxvtd -q -o -f
xautolock -time 5 -locker /usr/bin/slock &
urxvt &
chromium &
exec /usr/bin/i3
