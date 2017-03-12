#!/bin/bash

dracut -a "nfs icarus network base" --add-drivers "nfs sunrpc" --install 'xz tar /usr/lib/dracut/modules.d/97icarus/rootfs.tar.xz' $1 --force
chmod 664 $1
