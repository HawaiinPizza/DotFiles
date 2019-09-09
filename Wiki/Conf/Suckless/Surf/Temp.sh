BP(){
	TMP=$(mktemp)
	ls *orig > $TMP
	while read line
	do
		OG=$(echo $line | sed 's/\.orig//')
		cp $line $OG
	done <$TMP
}
