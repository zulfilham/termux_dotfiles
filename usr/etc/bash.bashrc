#!/data/data/com.termux/files/usr/bin/bash

function command_not_found_handle() {
	"$PREFIX/libexec/termux/command-not-found" "$1";
}
