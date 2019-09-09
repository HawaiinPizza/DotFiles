clear
TMP=$(mktemp)
cp Read.txt $TMP

sed -i 's/https:\/\/.*com\///' $TMP
sed -i 's/\//,/' $TMP

IFS=','

> Youtube.rss
while read  TYPE NAME
do
	if [ $TYPE == 'channel' ]
	then
		echo https://www.youtube.com/feeds/videos.xml?channel_id=$NAME >> Youtube.rss
	else
		echo https://www.youtube.com/feeds/videos.xml?user=$NAME >> Youtube.rss
	fi

done < $TMP
