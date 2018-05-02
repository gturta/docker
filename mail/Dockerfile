FROM alpine:edge

EXPOSE 587/tcp 993/tcp 25/tcp 143/tcp

RUN apk --no-cache add \
  s6 postfix dovecot

COPY ["services", "/services/"]
COPY ["etc", "/etc/"]

RUN postalias /etc/postfix/aliases && \
  postmap /etc/postfix/virtual && \
  postmap /etc/postfix/vmailbox && \
  chown dovecot:dovecot -R /etc/dovecot/ 

CMD ["s6-svscan", "/services"]
