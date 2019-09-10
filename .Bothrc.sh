# Exporting shit
export SHELL=/bin/zsh
export DVTM_TERM='rxvt dvtm'
export EDITOR=/bin/vim
export OPEN='xdg-open'
export TERMINAL='st'
export COMPTON=-1
export PLAN9=/home/zaki/.Pack/plan9 
export PAGER='/bin/less -r -f'
#export TERMINAL=/usr/bin/xterm
export TERM=xterm
export PATH=$PATH:"/home/zaki/.gem/ruby/2.6.0/bin"
export PATH=$PATH:$PLAN9/bin 
export PATH=$PATH:$HOME/.local/bin
export SPOTIPY_CLIENT_ID='652e5222e67b4d209840a49b1cabbc8a'
export SPOTIPY_CLIENT_SECRET='d7446bbefd6743dcb61844133840c7fc'
export NODE_TLS_REJECT_UNAUTHORIZED=0
export XDG_DATA_DIRS=$XDG_DATA_DIRS:/usr/share
export XDG_DATA_DIRS=$XDG_DATA_DIRS:$HOME/.local/share/

echo -n "\033]0;${USER}@${HOST}\007"



#export XDG_CONFIG_HOME="~/.config/".
#export XDG_DATA_HOME="~/.local/share/"
#export XDG_DATA_DIRS="~/.config/"
#export XDG_CONFIG_HOME=$HOME/.config/
#export XDG_DATA_HOME=$HOME/.local/share/
#export XDG_DATA_DIR=/usr/local/share/:/usr/share/


# Source the wiki shit
source /home/zaki/Wiki/Projects/Wiki/SearchFile.sh



#Both functions
source /home/zaki/.BothFunctions.sh
source /home/zaki/.BothAlias.sh

# Todo.sh
source /home/zaki/.todo/todo_completion


