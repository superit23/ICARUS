#!/bin/bash

check() {
    return 0
}


install() {
    inst_hook cmdline 97 "$moddir/parse-servers.sh"
    inst_hook cmdline 97 "$moddir/parse-genhost.sh"
    inst_hook pre-mount 97 "$moddir/create-fs.sh"
    inst_hook pre-mount 98 "$moddir/set-host.sh"
}
