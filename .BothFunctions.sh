fy(){
	$1 "$(find ~ -type $2 2>dev/null | fzy)" $3  
}

Term(){
	

	echo "What Terminal do you want?"
	Term=$( printf "st\nuxterm\ntermite\ncool-retro-term\nurxvt\nkitty\ntilix\nsakura\nhyper\n"  | slmenu ) 
	Temp=$(command -v $Term)
	if [ -z $Temp  ]
	then
		echo Not a terminal
	else
		 $Term >/dev/null 2>&1 & disown
	fi
}

xdg(){
	xdg-open $(fzf)  
}
alias tmuxn='tmux new-session -s $$ '
_trap_exit() {
	tmux kill-session -t $$; 
}
trap _trap_exit EXIT


InfoDump(){
	File=$(mktemp)
	info $1 --subnodes -o $File
	PDF=$(mktemp)
	mv $PDF $PDF.pdf
	PDF=$PDF.pdf
	pandoc $File -o $PDF
	zathura $PDF
}

GrepEdit(){
	Name=$(\grep -n $1 * -r | fzy)
	File=$(echo $Name | sed 's/:.*//')
	Line=$(echo $Name | sed 's/:/;/' | sed 's/.*;//' | sed 's/:.*//')
	vim $File +$Line
}


Themes(){
	gsettings set org.gnome.desktop.interface gtk-theme $1 
	gsettings set org.gnome.desktop.wm.preferences theme $1

}
BuffTmp(){
	TMP=$(mktemp)
	vim $TMP
	sh -e $TMP
}

xdg-set(){
	xdg-mime default $2.desktop "$(xdg-mime query filetype $1)"
}

XG (){
	xdg-open "$1" & disown
}
mkcd(){
	mkdir $1 && cd $1
}
Pass(){
	pass $(pass | tail -n +2 | fzy | sed 's/^\W*//')

}

#Fizy(){
#	if [[ -z $2 ]]
#	then
#		temp='$1 "$(ls -a | fzy)"' 
#		$temp & disown
#	else
#		temp='$2 "$(ls -a *.$1 | fzy)"'
#		$temp & disown
#	fi
#}

WALLPAP(){
	feh --bg-max "$(ls *[png+jpeg] | fzy)"
}


bro(){
	/home/zaki/.gem/ruby/2.6.0/bin/bro "$1" 2>/dev/null
}
#Mount (){
#	Part=$(lsblk | tail -n +2 | sed '/^s[d+r]\w*.*/d'  | sed 's/[\|+\`].//' | sed 's/8:.*//' | fzy)
#	Spot=$(ls ~/Mount | fzy)
#	echo -e "sudo mount /dev/$Part /home/zaki/Mount/$Spot"
#	sudo mount /dev/$Partj/home/zaki/Mount/$Spot 
#}


cdd () {
	cd "$(find ~ -type d 2>/dev/null | fzy)"  
}

cdf(){
	 "$(find . -type f 2>/dev/null | fzy)"  

}

vii () {
	vim "$(find ~ -type f 2>/dev/null | fzy)"  
}


mvv () {
	mv "$1" $(find ~ -type d 2>/dev/null | fzy)  
}

cpp () {
	cpp "$(find ~ -type f 2>/dev/null | fzy)" $(find ~ -type f 2>/dev/null | fzy)  
}

mdv(){
	mv "$(find ~ -type d 2>/dev/null | fzy)" $(find ~ -type d 2>/dev/null | fzy)  
}

pl(){
	mpv "$1" & disown
}

gct(){
	gcalcli calw today $1
}

GG (){
	git add * && git commit -m "$1" && git push

}

P () {
	zathura "$(ls *pdf | dmenu  )" & disown
}

V () {
	mpv "$(ls *mkv | dmenu  )" & disown
}


PP() {
	tabbed -c zathura -e  & disown
}

srr(){
	x="-browser=$1"
	surfraw duckduckgo $x "$2"
}

MPDF(){
	man -t $1 | ps2pdf - | zathura - & disown
}

CP () {
	echo "$(pwd)/$1" | xclip
}

xdg-query(){
xdg-mime query default $(xdg-mime query filetype $1)

}
Jobs(){
	Prog="$(jobs | fzy | sed 's/\[\w\]\ \W* \w* \W*//')"
	vim
	fg %$($Prog)
}


TmpPlay(){
	Play="Tmp.m3u"
	ls > $Play
	mpv $Play & disown

}


TmpPlayR(){
	Play="Tmp.m3u"
	ls > $Play
	sort -R $Play -o $Play
	mpv $Play & disown
}

EmacsBackup(){
	zip Emacs/Backup.zip .emacs .emacs.d/   -r
}

EmacsRedo(){
	rm .emacs .emacs.d/
	unzip Emacs/Backup.zip -d ~/
}
