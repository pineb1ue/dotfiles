# zinit
ZPLUG_HOME="$HOME/.zplug"
source $ZPLUG_HOME/init.zsh

# プラグイン

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# 構文のハイライト(https://github.com/zsh-users/zsh-syntax-highlighting)
zplug "zsh-users/zsh-syntax-highlighting"

# タイプ補完
autoload -Uz compinit && compinit
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"
zplug "junegunn/fzf"
# git の補完を効かせる
# 補完＆エイリアスが追加される
zplug "plugins/git",   from:oh-my-zsh
zplug "peterhurford/git-aliases.zsh"
# ヒストリの補完を強化する
zplug "zsh-users/zsh-history-substring-search", defer:3
# コマンドを種類ごとに色付け
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# terminalのディレクトリ移動の高速化
zplug "b4b4r07/enhancd", use:enhancd.sh

# history関係
zplug "zsh-users/zsh-history-substring-search"

# Theme
# zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "romkatv/powerlevel10k", as:theme, depth:1

zplug "b-ryan/powerline-shell"

ZSH_DISABLE_COMPFIX=true

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"


# 未インストール項目をインストール
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# コマンドをリンクして、PATH に追加し、プラグインは読み込む
zplug load
