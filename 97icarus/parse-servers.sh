#!/bin/bash

for iserver in $(getargs icarus.server=); do
  echo "$iserver" >> /tmp/iservers.info 
done

