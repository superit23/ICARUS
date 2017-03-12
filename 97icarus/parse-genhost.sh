#!/bin/bash

if [ $(getarg icarus.genhost=) -eq 1 ]; then
  echo "" >> /tmp/icarusgenhost.flag
fi
