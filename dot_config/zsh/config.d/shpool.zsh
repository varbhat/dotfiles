if command -v shpool >/dev/null; then
  sp() {
      shpool -d "$@"
  }

  spa() {
      if [[ $# -eq 0 ]]; then
	set -- "$(date +%s)"
      fi
      shpool attach "$@"
  }

  _spa() {
    compadd $(shpool list | awk '{print $1}' | sed 1d)
  }

  compdef _spa spa
fi
