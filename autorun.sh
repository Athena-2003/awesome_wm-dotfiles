#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run "flameshot"
run "picom --animations --config ~/.config/awesome/picom.conf -b"
