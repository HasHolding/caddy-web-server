FROM scratch

MAINTAINER "Levent SAGIROGLU" <LSagiroglu@gmail.com>

VOLUME /srv

COPY srv /srv

EXPOSE 80 443 2015

ENTRYPOINT  ["/srv/bin/caddy"]
CMD ["--conf", "/srv/etc/Caddyfile"]
