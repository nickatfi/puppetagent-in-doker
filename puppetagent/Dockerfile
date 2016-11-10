#
# Dockerfile for creating puppetmaster client
#
FROM ubuntu:latest
MAINTAINER Nikolai Kleiman <"nikolai.kleiman@gmail.com">

RUN apt-get -qq update
RUN apt-get -y install puppet
RUN service puppet stop
COPY puppet.conf /etc/puppet/
RUN puppet agent --enable
RUN service puppet start
