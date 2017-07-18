#!/bin/bash
filecount=0
while [ $filecount -lt 10 ]
do
	filesize=$RANDOM
	filesize=$(($filesize+1024))
	content=$(base64 /dev/urandom | head -c $filesize)
	dir1=${content:0:2}
	dir2=${content:2:2}
	#base64 /dev/urandom | head -c $filesize > /tmp/file${filecount}.$RANDOM
	folder="/tmp/${dir1,}/${dir2,}"
	if [ ! -d "$folder" ]; then
		mkdir -p $folder
	fi
	echo $content  > ${folder}/file${filecount}.$RANDOM
	((filecount++))
done