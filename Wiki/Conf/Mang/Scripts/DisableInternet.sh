notify-send "Going to disable hte internet in 15 minutes."
sleep $((15*60))
nmcli device disconnect wlp3s0
