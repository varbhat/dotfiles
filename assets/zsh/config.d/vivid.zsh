if command -v vivid >/dev/null; then
  export LS_COLORS="$(vivid generate catppuccin-mocha)"
else
  export LS_COLORS="Gxfxcxdxbxegedabagacad"
fi
