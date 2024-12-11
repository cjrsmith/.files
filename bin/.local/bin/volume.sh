#!/bin/bash

VOLUME=$(/usr/share/i3blocks/volume 5 pulse)
ICON="󰕾 "

if [ $VOLUME == "MUTE" ]; then
    ICON="󰖁 "
elif [ ${VOLUME%?} -gt 0 ] && [ ${VOLUME%?} -lt 50 ]; then
    ICON="󰖀 "
elif [ ${VOLUME%?} == 0 ]; then
    ICON=" "
else
    ICON="󰕾 "
fi

# Full and short texts
echo "<span background='#b4befe' foreground='#7f849c'></span><span background='#7f849c'>$ICON$VOLUME </span>"
echo "<span background='#b4befe' foreground='#7f849c'></span><span background='#7f849c'>$ICON$VOLUME </span>"

# Set urgent flag when muted or use orange when 0%
[ ${VOLUME} == "MUTE" ] && echo "#d20f39"
[ ${VOLUME%?} == 0 ] && echo "#FF8000"

exit 0
