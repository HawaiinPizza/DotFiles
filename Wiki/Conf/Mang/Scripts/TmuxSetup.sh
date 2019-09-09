tmux split-window  -c '/home/zaki/Wiki/Conf/Mang/Scripts/Time/'
tmux rename-window Timer
tmux new-window 'todotxt-machine'
tmux rename-window Task
tmux new-window  'cd /home/zaki/Wiki/Notes/ && vim /home/zaki/Wiki/Notes/ProgramList.otl /home/zaki/Wiki/Notes/Ideas.md /home/zaki/Wiki/Notes/BigTodo.otl -p'
tmux rename-window Notes
tmux new-window  'calcurse'
tmux rename-window Calendar
tmux switch-client -t '1.1'

tmux new-window  'newsboat'

