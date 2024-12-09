#!/bin/bash

BAT=$(acpi -b | grep -E -o '[0-9][0-9]?%')
CHARGING=$(acpi -b | grep -E -o 'Charging')
ICON="󰁹 "

if [ $CHARGING == "Charging" ]; then
    ICON="󰂄 "
elif [ ${BAT%?} -ge 90 ] && [ ${BAT%?} -lt 100 ]; then
    ICON="󰂂 "
elif [ ${BAT%?} -ge 80 ] && [ ${BAT%?} -lt 90 ]; then
    ICON="󰂀 "
elif [ ${BAT%?} -ge 70 ] && [ ${BAT%?} -lt 80 ]; then
    ICON="󰁿 "
elif [ ${BAT%?} -ge 60 ] && [ ${BAT%?} -lt 70 ]; then
    ICON="󰁾 "
elif [ ${BAT%?} -ge 50 ] && [ ${BAT%?} -lt 60 ]; then
    ICON="󰁽 "
elif [ ${BAT%?} -ge 40 ] && [ ${BAT%?} -lt 50 ]; then
    ICON="󰁽 "
elif [ ${BAT%?} -ge 30 ] && [ ${BAT%?} -lt 40 ]; then
    ICON="󰁼 "
elif [ ${BAT%?} -ge 20 ] && [ ${BAT%?} -lt 30 ]; then
    ICON="󰁻 "
elif [ ${BAT%?} -ge 10 ] && [ ${BAT%?} -lt 20 ]; then
    ICON="󰁺 "
elif [ ${BAT%?} -ge 0 ] && [ ${BAT%?} -lt 10 ]; then
    ICON="󰂎 "
else
    ICON="󰁹 "
fi

# Full and short texts
echo "$ICON$BAT"
echo "$ICON$BAT"

# Set urgent flag below 5% or use orange below 20%
[ ${BAT%?} -le 5 ] && exit 33
[ ${BAT%?} -le 20 ] && echo "#FF8000"

exit 0
