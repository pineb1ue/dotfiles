# basic
export EDITOR="nvim"
export XDG_CONFIG_HOME="$HOME/.config"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Docker
export DOCKER_HOST="unix://$XDG_RUNTIME_DIR/docker.sock"

# Python
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"

# local
[[ -f "$HOME/.zshenv.local" ]] && source "$HOME/.zshenv.local"