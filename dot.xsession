/usr/local/bin/xmodmap
/usr/local/bin/xbindkeys
/usr/local/bin/xsetroot -solid black
/usr/local/bin/xautolock -time 5 -locker "/usr/local/bin/xlock -mode blank"&
TERMINAL=/usr/local/bin/uxterm
export TERMINAL
/usr/local/bin/i3 || /usr/local/bin/i3-config-wizard
