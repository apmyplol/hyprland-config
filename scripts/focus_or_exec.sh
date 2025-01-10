#!/bin/sh

# class, title = "YouTube Music"
# out='$(hyprctl clients | grep -q "$1")'
if !(hyprctl clients | grep -q "$1") ; then
  notify-send "starting $1"
  name=""
  case $1 in
    "yt-music")
      name="youtube-music"
      ;;
    "anytype")
      name="anytype"
      ;;
    "discord")
      name="vesktop" 
  esac
  hyprctl dispatch exec $name

else
  notify-send "focusing $1"
fi
hyprctl dispatch workspace "name:$1"
