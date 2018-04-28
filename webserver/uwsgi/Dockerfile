FROM alpine:latest

RUN apk --no-cache add uwsgi uwsgi-python3
VOLUME /app
CMD ["/usr/sbin/uwsgi", \
  "--plugins-dir", "/usr/lib/uwsgi/", "--need-plugin", "python3", \
  "--chdir", "/usr/share/webapps/turta.ro", \
  "--virtualenv", "/usr/share/webapps/turta.ro/venv", \
  "--module", "website", \
  "--callable", "app", \
  "--socket", ":8001" \
  ]
