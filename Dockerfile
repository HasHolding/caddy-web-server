FROM scratch
MAINTAINER "Levent SAGIROGLU" <LSagiroglu@gmail.com>
COPY bin /bin
EXPOSE 80 443 2015
ENTRYPOINT  ["/bin/caddy"]
CMD ["--conf", "/etc/Caddyfile"]
