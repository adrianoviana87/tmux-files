#!/bin/bash

# Get the current terminal type
TERM_TYPE=$(echo "$TERM" | cut -d'-' -f1)

# Define the command to output the color codes for the current terminal type
if [ "$TERM_TYPE" == "screen" ]; then
  COLOR_COMMAND="tput -Txterm-256color setab"
else
  COLOR_COMMAND="tput setab"
fi

# Loop through all color codes from colour0 to colour255
for i in {0..255}; do
  COLOR_CODE="colour$i"
  COLOR_HEX=$(echo "ibase=10;obase=16;$i" | bc | tr '[:upper:]' '[:lower:]' | awk '{printf("%02s",$0)}')
  COLOR_NAME=$($COLOR_COMMAND $i; printf '      '; tput sgr0)

  printf "%-10s %s\n" "$COLOR_CODE" "$COLOR_NAME"
done

