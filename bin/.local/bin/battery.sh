#!/bin/bash

BAT=$(acpi -b | grep -E -o '[0-9]*?%')
TIME=" "$(acpi -b | grep -E -o '[0-9]*:[0-9]*:[0-9]* remaining')" "
CHARGING=$(acpi -b | grep -E -o 'Charging')
ICON="󰁹 "

if [ $CHARGING == "Charging" ]; then
    ICON="󰂄 "
    TIME=" charging "
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
    ICON="󰚥 "
    TIME=" "
fi

# Full and short texts
echo "<span background='#7f849c' foreground='#45475a'></span><span background='#45475a'>$ICON$BAT$TIME</span>"
echo "<span background='#7f849c' foreground='#45475a'></span><span background='#45475a'>$ICON$BAT$TIME</span>"

# Set urgent flag below 5% or use orange below 20%
[ ${BAT%?} -le 5 ] && echo "#d20f39"
[ ${BAT%?} -le 20 ] && echo "#FF8000"

exit 0
