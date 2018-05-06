FROM alpine:latest

RUN apk --no-cache add s6 \
  samba samba-common-tools

COPY ["etc/", "/etc/"]

EXPOSE 137/udp 138/udp 139/tcp 445/tcp

CMD ["s6-svscan", "/etc/s6/services"]
