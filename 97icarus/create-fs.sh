#!/bin/bash

#mkdir -p /newroot
mount -t tmpfs -o size=1500m tmpfs /sysroot || error

echo "ICARUS: Extracting rootfs... "
xz -d -c -f "/usr/lib/dracut/modules.d/97icarus/rootfs.tar.xz" | tar -x -f - -C /sysroot

mkdir -p /var/lib/dhclient
mkdir -p /run/rpcbind
#rm -fr /sysroot/var
#mkdir /sysroot/var


#cp -R /usr /sysroot
#dhclient enp0s3
dhclient
modprobe nfs

iserver=$(cat /tmp/iservers.info)
echo "ICARUS Master $iserver"
mount -n -o ro,nolock -t nfs $iserver/usr /sysroot/usr
#mount -n -o ro,nolock -t nfs $iserver/var /sysroot/var
