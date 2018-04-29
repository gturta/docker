FROM alpine:latest
RUN apk --no-cache add nginx && \
  mkdir -p /run/nginx/ 
COPY ["etc/nginx/nginx.conf","/etc/nginx/nginx.conf"]

VOLUME /etc/nginx/conf.d /etc/letsencrypt
EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
