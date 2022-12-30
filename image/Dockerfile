FROM alpine:3.16
RUN mkdir -p /app/downloads/audio && mkdir -p /app/downloads/video && mkdir -p /app/config
COPY download_audio.sh download_video.sh start_cron.sh crontab /app/
RUN apk update && apk add bash yt-dlp ffmpeg 
WORKDIR /app
RUN /usr/bin/crontab /app/crontab
CMD ["/bin/bash", "-c", "/app/start_cron.sh && touch /app/config/ytdlp_audio.log && touch /app/config/ytdlp_video.log && tail -f /app/config/ytdlp_audio.log /app/config/ytdlp_video.log"]