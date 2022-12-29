#!/bin/bash
# Not used, but a good reference
amixer get Master | awk '/Mono.+/ {print $6=="[off]"?$6:$4}';
