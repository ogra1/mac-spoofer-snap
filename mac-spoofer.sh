#! /bin/sh

set -e

CONFIG="$SNAP_DATA/config"

[ -e "$CONFIG" ] || exit 0

while read -r device addr; do
    ip link set $device down
    ip link set $device address $addr
    ip link set $device up
done <"${CONFIG}"

