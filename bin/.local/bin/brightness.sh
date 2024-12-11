#!/bin/bash

BRIGHTNESS=$(brightnessctl | grep -o -E "Current brightness: [0-9]* \([0-9]*%\)" | grep -o -E "[0-9]*%")
ICON="󰛨 "

if [ ${BRIGHTNESS%?} -ge 90 ] && [ ${BRIGHTNESS%?} -lt 100 ]; then
    ICON="󱩖 "
elif [ ${BRIGHTNESS%?} -ge 80 ] && [ ${BRIGHTNESS%?} -lt 90 ]; then
    ICON="󱩕 "
elif [ ${BRIGHTNESS%?} -ge 70 ] && [ ${BRIGHTNESS%?} -lt 80 ]; then
    ICON="󱩔 "
elif [ ${BRIGHTNESS%?} -ge 60 ] && [ ${BRIGHTNESS%?} -lt 70 ]; then
    ICON="󱩓 "
elif [ ${BRIGHTNESS%?} -ge 50 ] && [ ${BRIGHTNESS%?} -lt 60 ]; then
    ICON="󱩒 "
elif [ ${BRIGHTNESS%?} -ge 40 ] && [ ${BRIGHTNESS%?} -lt 50 ]; then
    ICON="󱩑 "
elif [ ${BRIGHTNESS%?} -ge 30 ] && [ ${BRIGHTNESS%?} -lt 40 ]; then
    ICON="󱩐 "
elif [ ${BRIGHTNESS%?} -ge 20 ] && [ ${BRIGHTNESS%?} -lt 30 ]; then
    ICON="󱩏 "
elif [ ${BRIGHTNESS%?} -ge 1 ] && [ ${BRIGHTNESS%?} -lt 20 ]; then
    ICON="󱧢 "
elif [ ${BRIGHTNESS%?} == 0 ]; then
    ICON="󰹐 "
else
    ICON="󰛨 "
fi

# Full and short texts
echo "$ICON$BRIGHTNESS"
echo "$ICON$BRIGHTNESS"

# Set urgent flag below 5% or use orange below 20%
[ ${BRIGHTNESS%?} -le 5 ] && exit 33
[ ${BRIGHTNESS%?} -le 20 ] && echo "#FF8000"

exit 0

