#!/data/data/com.termux/files/usr/bin/bash

# Initial setup
$PREFIX/bin/sshd -p 8022 &> /dev/null; # Starting ssh daemon if it's installed.
$PREFIX/bin/crond &> /dev/null;        # Starting cron daemon if it's installed.

for filename in ~/.{"path","aliases","auto_completion","bash_prompt","functions"}; do
   if [ -r "$filename" ]; then
      source "$filename";
   fi;
done;
