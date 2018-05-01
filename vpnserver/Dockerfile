FROM alpine:latest

RUN apk --no-cache add \
  openvpn

COPY ["etc/", "/etc/"]

EXPOSE 1194/udp

CMD ["openvpn", "--config", "/etc/openvpn/server.conf"]

