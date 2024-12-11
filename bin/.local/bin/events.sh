#!/usr/bin/env bash

MONTH=$(date '+%m')

christmas () {
    local days_left=""
    local day=$(date "+%-d")
    local remaining=$((25 - $day))
    # for ((i = 0 ; i < $remaining ; i++)); do
    #     days_left+="󰓎 "
    # done
    if [ $remaining -ge 0 ]; then
        # echo $days_left"... 󰜗 󰐅 Christmas 󰒷 󰊡 "
        echo $remaining" days till... 󰜗 󰐅 Christmas 󰒷 󰊡 "
    else
        echo "󰜗 󰐅 Christmas 󰒷 󰊡 " 
    fi

}
halloween () {
    local days_left=""
    local day=$(date "+%-d")
    local remaining=$((31 - $day))
    # for ((i = 0 ; i < $remaining ; i++)); do
    #     days_left+="󰚌 "
    # done
    if [ $remaining -ge 0 ]; then
        # echo $days_left"... 󰮣 Halloween 󰊠 "
        echo $remaining" days till... 󰮣 Halloween 󰊠 "
    else
        echo "󰮣 Halloween 󰊠 "
    fi
}

if [ $MONTH == 12 ]; then
    christmas
elif [ $MONTH == 10 ]; then
    halloween
fi
