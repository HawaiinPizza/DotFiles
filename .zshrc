# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/zaki/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd autopushd nomatch notify pushdignoredups 
unsetopt beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
#
#
#Bat=$(acpi | sed 's/.*\w, //' | sed 's/,.*//')
#
#Bat="%S%B%F{253}$Bat%% %f"

#if Discharing
#	Bat coor red
#else if Charging
#	Bat color green
#else
#	Bat color blue
#
#export PS1="fg{$Bat} %T %c$ "
export PS1="%T %1/>>%b%s"

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

source ~/.Bothrc.sh


function _znnn {
    zle kill-whole-line
    zle -U "nnn"
    zle accept-line
}
zle -N _znnn

function _zfff {
    zle kill-whole-line
    zle -U "fff"
    zle accept-line
}
zle -N _zfff

function _zCdT {
    zle kill-whole-line
    zle -U "CdT"
    zle accept-line
}
zle -N _zCdT

function _zCdWT {
    zle kill-whole-line
    zle -U "rover"
    zle accept-line
}
zle -N _zCdWT


#function _z<++> {
#    zle kill-whole-line
#    zle -U "<++>"
#    zle accept-line
#}
#zle -N _z<++>

function _zlf {
    zle kill-whole-line
    zle -U "lf"
    zle accept-line
}
zle -N _zlf

function _zranger {
    zle kill-whole-line
    zle -U "ranger"
    zle accept-line
}
zle -N _zranger


function _zvifm {
    zle kill-whole-line
    zle -U "vifm"
    zle accept-line
}
zle -N _zvifm


function _ztmux {
    zle kill-whole-line
    zle -U "tmux attach"
    zle accept-line
}
zle -N _ztmux

function _ztmuxn {
    zle kill-whole-line
    zle -U "tmuxn"
    zle accept-line
}
zle -N _ztmuxn

function _ztmp {
    zle kill-whole-line
    zle -U "BuffTmp"
    zle accept-line
}
zle -N _ztmp

function _zTerm {
    zle kill-whole-line
    zle -U "Term "
    zle accept-line
}
zle -N _zTerm

function _zXDG {
    zle kill-whole-line
    zle -U "xdg "
    zle accept-line
}
zle -N _zXDG


bindkey 'fdj' _zvifm
bindkey 'fdh' _znnn
bindkey 'fdk' _zlf
bindkey 'fdl' _zfff
bindkey "fd'" _ztmuxn
bindkey 'fdu' _zranger
bindkey "fd;" _zCdWT
bindkey 'fda' _ztmux
bindkey 'fd,' _zCdT
bindkey 'fd.' _zXDG
bindkey 'fd/' _zTerm
bindkey 'fdv' _ztmp
#bindkey 'dfn' fzf-file-widget
#bindkey 'dfm' fzf-cd-widget


# Easier, more vim-like editor opening
bindkey -M vicmd "^V" edit-command-line

