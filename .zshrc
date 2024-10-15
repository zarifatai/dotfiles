
# pnpm
export PNPM_HOME="/Users/Zarif/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export TMUX_CONF=~/.config/tmux/tmux.conf
alias tmux="tmux -f $TMUX_CONF"

bindkey -v
