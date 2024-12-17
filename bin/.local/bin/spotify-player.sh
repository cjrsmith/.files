#!/bin/bash

METADATA=$(/usr/share/i3blocks/mediaplayer spotify | tr -s '\n' ' ')
ICON=" "

if [ -z $METADATA ]; then
    ICON=""
    METADATA=" "
fi

# Full and short texts
echo "<span foreground='#a6e3a1'></span><span background='#a6e3a1'>$ICON$METADATA</span>"
echo "<span foreground='#a6e3a1'></span><span background='#a6e3a1'>$ICON$METADATA</span>"

exit 0
