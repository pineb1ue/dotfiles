# History storage location
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000

# Share command history with other terminals
setopt share_history
setopt inc_append_history

# Display all history
function history-all { history -E 1 }

# Delete duplicate command history
setopt hist_ignore_all_dups

# Remove history start with space
setopt hist_ignore_space

# Extra spaces are filled and recorded
setopt hist_reduce_blanks

# Auto expand history at completion time
setopt hist_expand

# Search
bindkey '^N' history-beginning-search-forward
bindkey '^P' history-beginning-search-backward
