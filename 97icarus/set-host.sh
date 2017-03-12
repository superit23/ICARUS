#!/bin/bash

if [ -e "/tmp/icarusgenhost.flag" ]; then
  echo "ICARUS Hostname Generation Enabled"
  dhcp_if="$(cat /var/lib/dhclient/dhclient.leases | grep interface | awk '{split($0,array,"\""); print array[2]}')"
  echo icarus-$(cat /sys/class/net/$dhcp_if/address | tr : -) > /sysroot/etc/hostname
fi
