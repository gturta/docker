FROM alpine:latest

RUN apk --no-cache add transmission-daemon openvpn supervisor ulogd
VOLUME ["/downloads", "/var/run/transmission"]
ENV TRANSMISSION_HOME="/var/run/transmission/"

COPY ["./etc/", "/etc/"]
COPY --chown=transmission:transmission \
    ["./config/settings.json","/var/run/transmission/"]

CMD ["supervisord", "-n", "-c", "/etc/supervisord.conf"]

HEALTHCHECK --interval=1m --timeout=30s \
  --start-period=30s --retries=1 \
  CMD ping -c3 8.8.8.8 || exit 1

