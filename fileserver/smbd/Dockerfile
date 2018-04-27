FROM alpine:latest
RUN apk add --no-cache samba samba-common-tools
VOLUME /mnt
COPY etc/samba/smb.conf /etc/samba/smb.conf
EXPOSE 139/tcp 445/tcp
CMD ["/usr/sbin/smbd","-F"]

