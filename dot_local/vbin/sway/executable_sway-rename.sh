#!/bin/bash
workspace=$(fuzzel -d -p "Rename workspace")
swaymsg rename workspace to $workspace
