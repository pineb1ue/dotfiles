alias s="source "$HOME/.zshrc" && source "$HOME/.zshenv""

alias bru="brew update && brew outdated && brew upgrade && brew cleanup"

alias -g G="| grep"
alias -g H="| head"
alias -g L="| less"
alias -g T="| tail"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

if [[ -d "$HOME/Desktop" ]]; then
  alias de="cd "$HOME/Desktop""
fi

if [ -d "$HOME/Downloads" ]; then
  alias dl="cd "$HOME/Downloads""
fi

if [ -d "$HOME/GoogleDrive" ]; then
  alias dr="cd "$HOME/GoogleDrive""
fi

alias h="history -i"

alias cp="cp -ir"
alias mkdir="mkdir -p"
alias mv="mv -i"

if hash "docker" >/dev/null 2>&1; then
  alias d="docker"
  alias dim="docker images"
  alias dps="docker ps"
  alias dpsa="docker ps -a"
fi

if hash "docker-compose" >/dev/null 2>&1; then
  alias dc="docker-compose"
fi

if hash "exa" >/dev/null 2>&1; then
  alias l="exa -hl --git"
  alias la="exa -ahl --git"
  alias ls="exa"
else
  alias l='ls -G'
    alias la='ls -a -G'
    alias ll='ls -l -G'
    alias lla='ls -la -G'
fi

if hash "git" >/dev/null 2>&1; then
  alias g="git"
  alias ga="git add"
  alias gb="git branch"
  alias gc="git commit"
  alias gco="git checkout"
  alias gcp="git cherry-pick"
  alias gd="git diff"
  alias gf="git fetch"
  alias gl="git log"
  alias gm="git merge"
  alias gp="git push"
  alias gpl="git pull"
  alias gplo="git pull origin"
  alias gpo="git push origin"
  alias gr="git rebase"
  alias gs="git status"
  alias gst="git stash"
  alias gsw="git switch"
fi

if hash "gomi" >/dev/null 2>&1; then
  alias rm="gomi"
fi

if hash "htop" >/dev/null 2>&1; then
  alias top="htop"
fi

if hash "poetry" >/dev/null 2>&1; then
  alias po="poetry run"
  alias pp="poetry run python"
  alias popup="poetry run pip install --upgrade pip"

  pdev() {
    poetry add -D black flake8
  }
fi

if hash "python" >/dev/null 2>&1; then
  alias pipup="pip install --upgrade pip"
  alias py="python"
  alias py2="python2"
  alias py3="python3"
  alias venv="python -m venv .venv && source .venv/bin/activate"
fi

if hash "tmux" >/dev/null 2>&1; then
  alias tt="tmux attach -t default || tmux new -s default"
fi

mkcd() {
  mkdir -p $1
  cd $1
}

targz() {
  tar -cvzf $1.tar.gz $1
}

untargz() {
  tar -zxvf $1
}
