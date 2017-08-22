FROM scratch

MAINTAINER "Levent SAGIROGLU" <LSagiroglu@gmail.com>

VOLUME /srv

COPY bin /srv/bin
COPY www /srv/www
COPY etc /srv/etc
COPY log /srv/log

EXPOSE 80 443 2015

ENTRYPOINT  ["/srv/bin/caddy"]
CMD ["--conf", "/srv/etc/Caddyfile"]
