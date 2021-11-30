#!/data/data/com.termux/files/usr/bin/bash

function main () {
   if (($# > 0)); then
      echo "Fatal: Expected no arguments, but $# given" 1>&2;
      return 1;
   elif [ $(uname --operating-system) != Android ]; then
      echo "Fatal: Unknown platform, this configuration only valid for Termux" 1>&2;
      return 1;
   fi;
   apt-get update --assume-yes;

   # Personal installation
   apt-get install atomicparsley bc bzip2 ccrypt clang cronie crunch curl ffmpeg file findutils git grep gzip imagemagick jq lua53 man openssh php python rclone renameutils rsync samefile sed sqlite tar termux-api termux-auth termux-elf-cleaner texinfo tree tsu unzip vim vtutils xxhash xz-utils zip && \
   pip install youtube-dl;

   # General installation
   apt-get install --assume-yes coreutils diffutils gnupg nano procps termux-am termux-tools;
   cp --archive --backup=numbered -- "$(dirname "$0")"/{home,usr} ~/..;
}

main "$@";
