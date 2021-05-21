# Auto complete
autoload -Uz compinit
compinit

autoload -Uz bashcompinit
bashcompinit

# Tab completion setting
zstyle ':completion:*:default' menu select=1

# Match capitalization with completion
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'

# Fix a command error
setopt correct

# Set of characters treated as part of a word
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# Zsh-completions
if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi
