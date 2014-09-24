FROM shimaore/debian
MAINTAINER Stéphane Alnet <stephane@shimaore.net>

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y --no-install-recommends nodejs-legacy npm
RUN apt-get autoremove -y
RUN apt-get clean
