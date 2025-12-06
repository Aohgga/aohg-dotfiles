#!/bin/bash

title=$(playerctl metadata title)
artist=$(playerctl metadata artist)
status=$(playerctl status)
echo "<open_pipe_menu>"
if [[ $status == Playing ]]; then
  echo "<item label=\"$title\" />"
  echo "<item label=\"$artist\" />"
  echo "<item label=\"暂停\"><action name=\"Execute\" command=\"playerctl pause\" /></item>"
  echo "<item label=\"上一首\"><action name=\"Execute\" command=\"playerctl previous\" /></item>"
  echo "<item label=\"下一首\"><action name=\"Execute\" command=\"playerctl next\" /></item>"
elif [[ $status == Paused ]]; then
  echo "<item label=\"$title\" />"
  echo "<item label=\"$artist\" />"
  echo "<item label=\"播放\"><action name=\"Execute\" command=\"playerctl play\" /></item>"
  echo "<item label=\"上一首\"><action name=\"Execute\" command=\"playerctl previous\" /></item>"
  echo "<item label=\"下一首\"><action name=\"Execute\" command=\"playerctl next\" /></item>"
else
  echo "<item label=\"未播放音乐\" />"
fi
echo "</open_pipe_menu>"
