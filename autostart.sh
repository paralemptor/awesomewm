#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

# To add programs to autostart, append run program [some arguments] to autostart.sh. 
# The run function checks whether there's already an instance of program running and only runs program if there is none. 
# You can check your autostart.sh by running it: 

# Policy kit (needed for GUI apps to ask for password)
# run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Set screen position on multihead with arandr
# run /home/ace/.screenlayout/laptop.sh
# Start Picom compositor
# run picom --experimental-backend &

run thinkfan -n
run pulseeffects --gapplication-service
#run pulseeffects -r
#run pulseeffects -l relu1
run xset dpms 3600 3600 3600 &
run xset s 3600 3600 &
pulseeffects

