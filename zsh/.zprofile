#automatically run startx when logging in on tty1
#[ -z "$DISPLAY" ] && [ $XDG_VTNR -eq 1 ] && startx
# auto startx breaks shit when needed!
[ -z "$DISPLAY" ] && [ $XDG_VTNR -eq 1 ]
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export CONFIG="$HOME/.config"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="$HOME/.config/zsh"
