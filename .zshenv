# basic
export EDITOR="nvim"
export XDG_CONFIG_HOME="$HOME/.config"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Docker
export DOCKER_HOST="unix://$XDG_RUNTIME_DIR/docker.sock"

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PATH="$HOME/.poetry/bin:$PATH"

# local
[[ -f "$HOME/.zshenv.local" ]] && source "$HOME/.zshenv.local"