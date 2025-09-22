#!/bin/bash

song=$(playerctl metadata --format '{{ artist }} - {{ title }}' | cut -c1-20)

if [[ $song = $(playerctl metadata --format '{{ artist }} - {{ title }}') ]]; then
    echo "  | $song"

else
    echo "  | $song..."
fi
