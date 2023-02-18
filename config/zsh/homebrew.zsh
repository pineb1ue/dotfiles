if hash "brew" >/dev/null 2>&1; then
	fpath+="$(brew --prefix)/share/zsh/site-functions"
	autoload -Uz compinit -C && compinit
fi

if hash "sheldon" >/dev/null 2>&1; then
	eval "$(sheldon source)"
fi

if hash "starship" >/dev/null 2>&1; then
	eval "$(starship init zsh)"
fi