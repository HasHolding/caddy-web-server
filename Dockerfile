FROM scratch

MAINTAINER "Levent SAGIROGLU" <LSagiroglu@gmail.com>

VOLUME /www
VOLUME /etc

COPY bin /bin
COPY www /www
COPY etc /etc

EXPOSE 80 443 2015

ENTRYPOINT  ["/bin/caddy"]
CMD ["--conf", "/etc/Caddyfile"]
