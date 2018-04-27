FROM alpine:latest
RUN apk add --no-cache samba samba-common-tools
EXPOSE 137/udp 138/udp 
CMD ["/usr/sbin/nmbd","-F"]

