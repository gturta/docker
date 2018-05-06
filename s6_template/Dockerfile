FROM alpine:latest

RUN apk --no-cache add s6

COPY ["etc/", "/etc/"]

CMD ["s6-svscan", "/etc/s6/services"]




