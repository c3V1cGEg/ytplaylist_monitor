#!/bin/bash
date
yt-dlp -x --audio-format mp3 --download-archive /app/config/downloadedAudio.txt --output "/app/downloads/audio/%(title)s [yt_%(id)s].%(ext)s" "https://www.youtube.com/playlist?list=${AUDIO_PLAYLIST_ID}"