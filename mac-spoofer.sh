#! /bin/sh

set -e

CONFIG="$SNAP_DATA/config"

[ -e "$CONFIG" ] || exit 0

while read -r device addr; do
    ifconfig $device down
    ip link set $device address $addr
    ifconfig $device up
done <"${CONFIG}"

