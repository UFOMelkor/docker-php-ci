FROM tetraweb/php:5.6
MAINTAINER Jan Bartel <jan.bartel@atino.de>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y ssh
