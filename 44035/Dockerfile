FROM debian:jessie

RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv 0E08A149DE57BFBE && \
    echo "deb http://repo.saltstack.com/apt/debian/8/amd64/archive/2016.11.4 jessie main" > /etc/apt/sources.list.d/saltstack-2016.11.4.list && \
    echo "deb http://repo.saltstack.com/apt/debian/8/amd64/archive/2017.7.2 jessie main" > /etc/apt/sources.list.d/saltstack-2017.7.2.list && \
    apt-get update && \
    apt-get install -y salt-common=2016.11.4+ds-1 salt-minion=2016.11.4+ds-1

COPY ./srv /srv

ENV container=docker

ENTRYPOINT ["/sbin/init"]
