FROM alpine:latest

MAINTAINER "Levent SAGIROGLU" <LSagiroglu@gmail.com>

VOLUME /srv

ENV WEBSRV ""

COPY bin /bin
COPY srv /srv

EXPOSE 80 443 2015

ENTRYPOINT ["/bin/entrypoint.sh"]
