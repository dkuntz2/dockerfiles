FROM alpine:latest

ENV CONFIG_DIR /config

RUN apk add --update dumb-init transmission-daemon \
  && rm -rf /var/cache/apk/*

RUN mkdir -p /config \
  && mkdir -p /downloads

RUN mkdir -p /etc/defaults
COPY transmission-settings.json /etc/defaults/transmission-settings.json

COPY run-transmission.sh /run-transmission.sh

EXPOSE 9091
EXPOSE 51413
EXPOSE 51413/udp

VOLUME ["/config"]
VOLUME ["/downloads"]

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/run-transmission.sh"]
