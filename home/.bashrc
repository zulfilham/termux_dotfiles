#!/data/data/com.termux/files/usr/bin/bash

if ! pidof -q sshd; then sshd &> /dev/null; fi;
if ! pidof -q crond; then crond &> /dev/null; fi;
if (($(pgrep --count bash) == 1)); then (termux-wake-lock&) > /dev/null; fi;
env > ~/.ssh/environment;

for filename in ~/.{export,aliases,auto_completion,bash_prompt,functions}; do
   if [ -r $filename ]; then
      source $filename;
   fi;
done;

unset filename;
