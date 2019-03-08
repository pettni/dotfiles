#!/usr/bin/env bash

# You can call this script like this:
# $ ./volumeControl.sh up
# $ ./volumeControl.sh down
# $ ./volumeControl.sh mute

# Script modified from these wonderful people:
# https://github.com/dastorm/volume-notification-dunst/blob/master/volume.sh
# https://gist.github.com/sebastiencs/5d7227f388d93374cebdf72e783fbd6a

function get_volume {
  amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_mute {
  amixer get Master | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
}

function send_notification {
    DIR=`dirname "$0"`/notify-send
    volume=`get_volume`
    if [ "$is_mute" || "$volume" = "0" ]; then
	icon_name="/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-muted.svg"
	$DIR/notify-send.sh "$volume""      " -i "$icon_name" -t 2000 -h int:value:"$volume" -h string:synchronous:"─" --replace=555
    else
	if [  "$volume" -lt "10" ]; then
	    icon_name="/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-low.svg"
	elif [ "$volume" -lt "30" ]; then
            icon_name="/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-low.svg"
	elif [ "$volume" -lt "70" ]; then
            icon_name="/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-medium.svg"
	else
            icon_name="/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-high.svg"
	fi
	bar=$(seq -s "─" $(($volume/5)) | sed 's/[0-9]//g')
	$DIR/notify-send.sh "$volume""     ""$bar" -i "$icon_name" -t 2000 -h int:value:"$volume" -h string:synchronous:"$bar" --replace=555
    fi
}

case $1 in
  up)
    pactl set-sink-volume 0 +5%
    #send_notification
    ;;
  down)
    pactl set-sink-volume 0 -5%
    #send_notification
    ;;
  mute)
    pactl set-sink-mute 0 toggle
    #send_notification
    ;;
esac
