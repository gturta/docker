docker create \
--name plex \
--network docker-net \
-p 32400:32400/tcp \
-p 3005:3005/tcp \
-p 8324:8324/tcp \
-p 32469:32469/tcp \
-p 1900:1900/udp \
-p 32410:32410/udp \
-p 32412:32412/udp \
-p 32413:32413/udp \
-p 32414:32414/udp \
-e TZ="Europe/Bucharest" \
-e PLEX_CLAIM="claim-5KAp2Bhx9soqNPx9bKBz" \
-e ADVERTISE_IP="http://172.20.1.10:32400/" \
-h plex \
-v plex-db:/config \
-v plex-transcode:/transcode \
-v /mnt/storage/Media:/data \
plexinc/pms-docker

