FROM alpine
MAINTAINER Jake Skeates <jskeates@me.com>

ADD dropbox_uploader.sh /usr/local/bin/dropbox_uploader
ADD dropShell.sh /usr/local/bin/dropShell

RUN apk upgrade -U \
 && apk add ca-certificates bash curl coreutils \
 && rm -rf /var/cache/* \
 && chmod 755 /usr/local/bin/dropbox_uploader \
 && chmod 755 /usr/local/bin/dropShell \
 && touch /root/.dropbox_uploader

CMD /usr/local/bin/dropShell
