#/usr/local/bin/xrandr --output default --mode 1366x768
/usr/local/bin/xrandr --dpi 80
/usr/local/bin/xmodmap
/usr/local/bin/xbindkeys
/usr/local/bin/xsetroot -solid black
/usr/local/bin/xautolock -time 5 -locker "/usr/local/bin/xlock -mode blank"&
/usr/local/bin/setxkbmap -model pc104 -layout us -option ctrl:swapcaps -option terminate:ctrl_alt_bksp
TERMINAL=/usr/local/bin/uxterm
export TERMINAL
/usr/local/bin/i3 || /usr/local/bin/i3-config-wizard
