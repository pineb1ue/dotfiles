# Global alias
alias -g L='| less'
alias -g H='| head'
alias -g G='| grep'
alias -g GI='| grep -ri'

# Common alias
## Move parent directory alias
alias ...='cd ../..'
alias ....='cd ../../..'

# alias l='ls -ltr'
# alias la='ls -la'
# alias ll='ls -l'
# alias lst='ls -ltr'

alias l='ls -G'
alias la='ls -a -G'
alias ll='ls -l -G'
alias lla='ls -la -G'

alias top='htop'

alias v='vim'
alias vi='vim'
alias vz='vim ~/.zshrc'

alias atom='vim'
alias emacs='rm -rf /'

## Display date on history
alias h='fc -lt '%F %T' 1'

## Package manager
alias agi='sudo apt install'
alias agr='sudo apt remove'
alias agu='sudo apt update'

## Clipboard like mac
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

## Interactive
alias cp='cp -i'
alias cp='cp -r'
alias rm='rm -i'
alias mkdir='mkdir -p'

## Git alias
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gl='git log'
alias glo='git log --oneline'
alias gp='git push'
alias gpod='git push origin develop'
alias gpom='git push origin master'
alias gpl='git pull'
alias gs='git status'
alias gst='git status'

## Python alias
alias py='python'
alias py2='python2'
alias py3='python3'

# tar
alias targz='tar -zcvf'
alias untargz='tar -zxvf'

# hub alias
alias hbr='hub browse'

# peco alias
alias gcd='cd $(ghq root)/$(ghq list | peco)'

# exa
alias ls='exa'
alias l='ls -hl --color=auto --git'
alias la='ls -ahl --color=auto --git'

# poetry
alias po='poetry run'
alias pp='poetry run python'