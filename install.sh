#!/data/data/com.termux/files/usr/bin/bash

function slowprint () {
   local string="$1";
   local length=${#string};

   for (( i=0; i<length; i++ )); do
      echo -n "${string:i:1}";
      sleep 0.010;
   done;
   echo;
}

function main () {
   echo -en "\e[41;1mImportant to note:\e[0m\n";
   sleep 0.5;
   echo -en "\e[33m";
   slowprint "The installation will overwrite your existing configurations ...";
   sleep 1;
   slowprint "Only do this if you really know what you're doing.";
   sleep 2;
   echo -en "\e[0m";
   echo -en "\e[3F\e[0J";

   while true; do
      read -ep $'\e[41;1mImportant to note:\e[0m\n\e[33mThe installation will overwrite your existing configurations ...\nOnly do this if you really know what you\'re doing.\e[0m\n\nContinue anyway (Y/n) > ';

      case "${REPLY,,}" in
         y)
            scriptname="$(realpath "$0")";
            dirname="$(dirname "$scriptname")";

            if [ -e "/data/data/com.termux/files" ] && [ -d "/data/data/com.termux/files" ]; then
               echo -en "\e[33minstalling ...\e[0m\n";
               cp -r "$dirname/home/." $HOME 2> /dev/null;
               cp -r "$dirname/nano/." "$PREFIX/share/nano" 2> /dev/null;
               cp -r "$dirname/etc/." "$PREFIX/etc" 2> /dev/null;
               echo -en "\e[1F\e[0K\e[32mIt's done.\e[0m\n";
               echo -en "\e[97mPlease restart Termux in order the configurations to take effect.\e[0m\n";
            else
               echo "Fatal error: Unknown platform, this configuration only valid for \`Termux'." >&2;
               exit 1;
            fi;
            break;
            ;;
         n)
            echo -en "\e[97mAbort.\e[0m\n";
            break;
            ;;
         *)
            if (( $? == 0 )); then
               echo -en "\e[5F\e[0J";
            else
               echo -en "\e[4F\e[0J";
            fi;
            ;;
      esac;
   done;
}

main;