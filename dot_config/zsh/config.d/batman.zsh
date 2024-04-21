# https://github.com/eth-p/bat-extras/blob/master/doc/batman.md
if command -v batman >/dev/null; then
  alias man='batman' 
  compdef batman=man
fi
