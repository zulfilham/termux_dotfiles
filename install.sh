#!/data/data/com.termux/files/usr/bin/bash

function main () {
   if (($# > 0)); then
      echo "Fatal: Expected no arguments, but $# given" 1>&2;
      return 1;
   elif [ $(uname --operating-system) != Android ]; then
      echo "Fatal: Unknown platform, this configuration only valid for Termux" 1>&2;
      return 1;
   fi;

   local FILES="$(dirname "$PREFIX")" DIRNAME="$(dirname "$0")";
   local required_dependencies=(coreutils termux-am termux-tools procps diffutils nano vim);
   local installed_dependencies=($(command -V ${required_dependencies[@]} | grep --only-matching "^[a-z0-9-]\+"));

   if [ "${required_dependencies[@]}" != "${installed_dependencies[@]}" ]; then
      pkg install --assume-yes ${required_dependencies[@]};
   fi;
   cp --archive --backup=numbered --target-directory="$FILES" -- "$DIRNAME/home";
   cp --archive --backup=numbered --target-directory="$FILES" -- "$DIRNAME/usr";
}

main "$@";
