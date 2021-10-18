#!/data/data/com.termux/files/usr/bin/bash

# Personal run commands
if ! pidof -q sshd; then sshd &> /dev/null && env > ~/.ssh/environment; fi;
if ! pidof -q crond; then crond &> /dev/null && crontab ~/.crontab; fi;

# General run commands
if (($(pgrep --count --exact bash) == 1)); then (termux-wake-lock&); fi;

for filename in ~/.{export,aliases,auto_completion,bash_prompt,functions}; do
   if [ -r $filename ]; then
      source $filename;
   fi;
done;

unset filename;
