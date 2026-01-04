#!/usr/bin/env bash
PREVIEW_TEXT="!ilI|17 eco0ODQ b6G&B80\n\$sS52Z\%698BG6ao\n0123456789%\nabcdefghijklmnopqrstuvwxyz\nABCDEFGHIJKLMNOPQRSTUVWXYZ\n@#$^& ()[]{}  ~-=+*\/|\\\!?<>\n\`\'\"_;:,. «‘’‚‛“”„‟‹›⹂»"
convert -size "1200x800" xc:"#ffffff" \
	-gravity center \
	-pointsize 50 \
	-font "$1" \
	-fill "#000000" \
	-annotate +0+0 "$PREVIEW_TEXT" \
	-flatten \
	png:-
