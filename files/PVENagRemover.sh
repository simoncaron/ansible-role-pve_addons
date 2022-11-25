#!/bin/bash

dpkg -V proxmox-widget-toolkit | grep -q 'proxmoxlib.js'

if [ $? -eq 1 ]; then
  sed -i '/data.status/{s/\!//;s/Active/NoMoreNagging/}' /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js
fi