FROM alpine:latest

RUN echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
  apk --no-cache add cups cups-filters hplip@testing
COPY ["etc/cups/", "/etc/cups/"]
#RUN echo "root:root123" | chpasswd

EXPOSE 631/tcp

CMD ["/usr/sbin/cupsd", "-F"]
