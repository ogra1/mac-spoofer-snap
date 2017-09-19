# mac-spoofer

This snap allows re-setting mac adresses on your Ubuntu Core device.

## Configuration

After installing the snap connect the necessary network-control and network-observe interfaces:

    snap connect mac-spoofer:network-control
    snap connect mac-spoofer:network-observe

Now create a config file with "devicename" "desired mac address" (one line per device) like:

    echo "eth0 b8:27:eb:b4:fe:d2"| sudo tee /var/snap/mac-spoofer/current/config

and restart the mac-spoofer service ...

    snap stop mac-spoofer
    snap start mac-spoofer

From now on the system should use this mac address after boot

## Building

just clone this tree and call 'snapcraft' in the toplevel of the tree
