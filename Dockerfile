FROM scratch
MAINTAINER "Levent SAGIROGLU" <LSagiroglu@gmail.com>
COPY bin /bin
RUN chmod 755 /bin/caddy
EXPOSE 80 443 2015
ENTRYPOINT  ["/bin/caddy"]
CMD ["--conf", "/etc/Caddyfile"]
