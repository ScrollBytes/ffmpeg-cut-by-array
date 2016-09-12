# ffmpeg-cut-by-array
Quickly cut a long video into smaller parts using FFMPEG on Linux

Shell Script to cut a long video into smaller parts using FFMPEG on Linux

First ...

1. Place "array-video-cut.sh" in an empty folder.
2. Make it executable by opening terminal (CTRL+ALT+T) and typing "chmod +x /path/to/script/array-video-cut.sh"

Replace "/path/to/script/" with the actual path on your computer. You can get the path by opening your file manager, right-click on "array-video-cut.sh" and click "Copy path(s)".


How to use ...

1. Open "array-video-cut.sh" using a text editor program like Geany.
2. Change the INPUTFILE variable to the path of the video file you want to cut.
3. Change the ENDTIME variable to the first point you want to cut from in the video.
4. Below that line set all the subsequent times in the video you want to cut at in the format "00:00:00" - Hour:Minute:Second
 

FFMPEG will cut the video at the points you've entered and place the new videos in the same folder as the script.

Tested on Lubuntu 14.04
