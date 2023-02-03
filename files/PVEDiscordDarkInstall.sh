#!/bin/bash

/usr/bin/bash /usr/local/lib/PVEDiscordDark/PVEDiscordDark.sh -s update > /dev/null 2>&1

retVal=$?

if [ $retVal -eq 2 ]; then
    /usr/bin/bash /usr/local/lib/PVEDiscordDark/PVEDiscordDark.sh -s install > /dev/null 2>&1
fi
