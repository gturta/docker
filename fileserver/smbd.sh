#!/bin/sh

docker run -d --name fileserver_smbd \
    -p "139:139/tcp" -p "445:445/tcp" \
    --mount source=/mnt/storage,target=/mnt/storage,type=bind,bind-propagation=slave \
    --restart unless-stopped \
    --tty \
    gturta/smbd
