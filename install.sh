#!/data/data/com.termux/files/usr/bin/bash

function main () {
   if (($# > 0)); then
      echo "Fatal: Expected no arguments, but $# given" 1>&2;
      return 1;
   elif [ "$(uname --operating-system)" != Android ]; then
      echo "Fatal: Unknown platform, this configuration only valid for Termux" 1>&2;
      return 1;
   fi;

   # General installation
   local dirname="$(dirname -- "$0")";
   cp --archive --backup=numbered -- "$dirname/usr/etc/apt" "$PREFIX/etc";
   apt-get update --assume-yes;
   apt-get install --assume-yes coreutils diffutils gnupg nano procps termux-am termux-tools;

   # Personal installation
   apt-get install atomicparsley bc bzip2 ccrypt clang cronie crunch curl ffmpeg file findutils git grep gzip httrack imagemagick jq lua53 man mariadb openssh p7zip php python rclone renameutils rsync samefile sed sqlite tar termux-api termux-auth termux-elf-cleaner texinfo tree tsu unrar unzip vim vtutils xxhash xz-utils zip && \
   pip install youtube-dl;

   # Main installation
   cp --archive --backup=numbered -- "$dirname"/{home,usr} ~/..;
   echo "Please restart Termux to apply the changes!";
}

main "$@";
