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
   pkg up;

   # Personal installation
   apt-get install atomicparsley bc bzip2 ccrypt clang cronie crunch curl ffmpeg file findutils git grep gzip imagemagick jq man openssh php python rclone renameutils rsync samefile sed sqlite tar termux-api termux-auth termux-elf-cleaner texinfo tree unzip vim vtutils xxhash xz-utils zip && \
   pip install youtube-dl;

   # General installation
   apt-get install --assume-yes coreutils diffutils gnupg nano procps termux-am termux-tools;
   cp --archive --backup=numbered --target-directory="$FILES" -- "$DIRNAME/home";
   cp --archive --backup=numbered --target-directory="$FILES" -- "$DIRNAME/usr";
}

main "$@";
