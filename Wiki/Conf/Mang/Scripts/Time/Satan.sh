x=$1

for i in $(seq 1 $x)
do
	st -e bash -c 'tmux new -s $$ -t Mang' & disown
done
