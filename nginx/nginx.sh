docker run -d \
    --name nginx \
    --network docker-net \
    -v `pwd`/etc/nginx/sites.d/:/etc/nginx/sites.d \
    -v /etc/letsencrypt:/etc/letsencrypt \
    -p 80:80 -p 443:443 \
    --restart unless-stopped \
    gturta/nginx

