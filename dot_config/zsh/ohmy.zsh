export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="random"

plugins=(
    cp
    wd
    git
    ruby
    emoji
    emotty
    python
    extract
    autojump
    copyfile
    dircycle
    encode64
    jsontools
    git-extras
    command-not-found
)
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh
