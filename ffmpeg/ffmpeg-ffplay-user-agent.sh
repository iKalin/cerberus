#!/bin/bash


# ffplay and ffmpeg add http user agent
#======================================


# ffplay
#=======

# you can also change the user agent string
# replace http://example.com/video.m3u8 with real url

ffplay -fs \
-user-agent "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36" \
http://example.com/video.m3u8



# ffmpeg
#=======

# you can also change the user agent string
# replace http://example.com/video.m3u8 with real url
# note - aac audio fix: -bsf:a aac_adtstoasc


ffmpeg \
-user-agent "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36" \
-i \
http://example.com/video.m3u8 \
-c:v copy -bsf:a aac_adtstoasc -loglevel error \
video-$(date +"%H-%M-%m-%d-%y").mp4