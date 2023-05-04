#!/bin/bash
# notify-send "$(trans en:zh "$(wl-paste)" | sed -r 's/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g')"
notify-send "$(trans -proxy 127.0.0.1:1087 -host zh -t zh+en "$(wl-paste)" -no-ansi)"
