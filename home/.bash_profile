#!/data/data/com.termux/files/usr/bin/bash

# Initial setup
{ pidof sshd || sshd -p 8022; } &> /dev/null; # Start ssh daemon if not running already.
{ pidof crond || crond; } &> /dev/null;       # Start cron daemon if not running already.

for filename in ~/.{"path","aliases","auto_completion","bash_prompt","functions"}; do
   if [ -r "$filename" ]; then
      source "$filename";
   fi;
done;
