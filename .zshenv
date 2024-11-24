# basic
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Homebrew
export HOMEBREW_NO_INSTALL_FROM_API=1
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin:$PATH"

# fnm
eval "$(fnm env --use-on-cd --shell zsh)"
