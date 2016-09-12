#!/bin/bash

## EDIT FROM HERE

	## set input file path
	INPUTFILE="/path/to/video/file.mp4"

	## set starting point
	ENDTIME="00:00:22"

	## set points to cut at
	declare -a arr=("00:03:09" "00:07:36" "00:09:45" "00:16:33" "00:18:56" "00:22:06" "00:24:40")

## DONT EDIT BELOW THIS LINE



## current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for i in "${arr[@]}"
do
    
    echo "-------------------"
    echo "Cutting video at $i"
    echo "-------------------"
    TIMESTAMP=$(date +%s)

	STARTTIME=$ENDTIME
	ENDTIME=$i
	starttimedash=${STARTTIME//:/-}
	endtimedash=${ENDTIME//:/-}
	
	to_seconds1 () {
    IFS=: read h m s <<< "$1"
    endtimeseconds=$(( 10#$h * 3600 + 10#$m * 60 + 10#$s ))
	}
	to_seconds1 $ENDTIME
	
	to_seconds2 () {
    IFS=: read h m s <<< "$1"
    starttimeseconds=$(( 10#$h * 3600 + 10#$m * 60 + 10#$s ))
	}
	to_seconds2 $STARTTIME
	
	durationinseconds=$((endtimeseconds-starttimeseconds))
	
	## Places cut videos into current directory with a random filename each time
	ffmpeg -i "$INPUTFILE" -vcodec copy -acodec copy -ss "$STARTTIME" -t "$durationinseconds" "$DIR/$TIMESTAMP$RANDOM.mp4";
	

done
