#!/bin/bash

read -r value < /sys/class/backlight/intel_backlight/brightness
result=$(echo "scale=0; $value * 2" | bc)
echo "$result"
echo "$result" > /sys/class/backlight/intel_backlight/brightness