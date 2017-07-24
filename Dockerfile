FROM ubuntu:16.04

LABEL maintainer="Krasnoperov Vitaliy <alistar.neron@gmail.com>"

RUN apt-get update && apt-get install -y \
        supervisor \
        wget \
        curl \
        git


CMD /usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf
