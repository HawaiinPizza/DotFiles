clear
tmp=$(mktemp)
echo "$(tmux ls | sed 's/:.*//')" > $tmp
Choice=$(cat $tmp | dmenu -p "Which tmux session do u want to attach/create?")

if grep -q $Choice $tmp; then

	st -e tmux new -s $$ -D -t $Choice 
	tmux kill-session -t $$
else
	st -e tmux new -s $Choice   
	tmux kill-session -t $Choice
fi
