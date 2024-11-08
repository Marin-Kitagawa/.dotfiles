### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

# Auto `ls` plugin
zinit ice wait'0' lucid
zinit load desyncr/auto-ls

# Calculator Plugin zsh
zinit ice wait'0' lucid
zinit load arzzen/calc.plugin.zsh

# send.zsh plugin 
# Add, Commit, Pull and push in one go
# Usage: send "commit message"
zinit ice wait'0' lucid
zinit load robertzk/send.zsh

# Better zsh `npm` completions
zinit ice wait'0' lucid
zinit load lukechilds/zsh-better-npm-completion

# Higher-order functions in zsh
zinit ice wait'0' lucid
zinit load Tarrasch/zsh-functional

# zsh-vi-mode plugin
# zinit ice depth=1
# zinit light jeffreytse/zsh-vi-mode

# History search multi word
zinit load zdharma-continuum/history-search-multi-word

# fzf marks for easier access
zinit ice wait'0' lucid
zinit load urbainvaes/fzf-marks

zinit light z-shell/F-Sy-H

eval "$(sheldon source)"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
