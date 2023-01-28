#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Importa os alias de outro arquivo
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export LC_ALL="C"

# Carrega as cores do pywal
(cat ~/.cache/wal/sequences &)
cat ~/.cache/wal/sequences
source ~/.cache/wal/colors-tty.sh
export PATH="/home/willames/.local/bin:$PATH"
export PATH="/home/willames/.dotnet/tools:$PATH"
export PATH="/home/willames/browser-drivers:$PATH"
export LC_ALL="en_US.UTF-8"
export HISTFILESIZE=20000

# Usa o powerline
#if [ -f $HOME/.local/lib/python3.10/site-packages/powerline/bindings/bash/powerline.sh ]; then
#    $HOME/.local/bin/powerline-daemon -q
#    POWERLINE_BASH_CONTINUATION=1
#    POWERLINE_BASH_SELECT=1
#    source $HOME/.local/lib/python3.10/site-packages/powerline/bindings/bash/powerline.sh
#fi
alias config='/usr/bin/git --git-dir=/home/willames/.cfg/ --work-tree=/home/willames'
