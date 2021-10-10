#!/data/data/com.termux/files/usr/bin/bash

if (($(pgrep -c bash) == 1)); then
   pkill "crond|sshd";
   termux-wake-unlock&
fi;
