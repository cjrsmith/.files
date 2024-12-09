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
echo "$ICON$VOLUME"
echo "$ICON$VOLUME"

# Set urgent flag when muted or use orange when 0%
[ ${VOLUME} == "MUTE" ] && exit 33
[ ${VOLUME%?} == 0 ] && echo "#FF8000"

exit 0
