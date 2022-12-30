#!/bin/bash
date
yt-dlp -ciw -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio" --download-archive /app/config/downloadedVideo.txt --write-description --write-info-json --output "/app/downloads/video/%(uploader)s/%(title)s [%(id)s].%(ext)s" --merge-output-format mp4 "https://www.youtube.com/playlist?list=${VIDEO_PLAYLIST_ID}"