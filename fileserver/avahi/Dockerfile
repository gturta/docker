FROM alpine:latest
RUN apk add --no-cache avahi && \
    sed -i 's/#enable-dbus=yes/enable-dbus=no/g' /etc/avahi/avahi-daemon.conf

COPY ["./etc/avahi/services", "/etc/avahi/services/"]
EXPOSE 5353/udp

CMD ["avahi-daemon"]

