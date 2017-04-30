FROM phusion/baseimage:0.9.21

MAINTAINER Robert Covington <rob@robcovington.com>

ENV DEBIAN_FRONTEND=noninteractive

CMD ["/sbin/my_init"]

RUN mkdir /etc/service/ddclient && \
	mkdir /config && \
	mkdir /ddclient && \
	mkdir /ddclient/pid

COPY startup.sh /etc/service/ddclient/run

RUN apt-get update && apt-get install -y \
	ddclient && \
	chmod +x /etc/service/ddclient/run

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME /config

