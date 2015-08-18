FROM tetraweb/php:5.6
MAINTAINER Jan Bartel <jan.bartel@atino.de>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y ssh libldap2-dev dh-make-php php5-dev build-essential libmagic-dev debhelper
RUN apt-get install -y libmagickwand-dev --no-install-recommends
RUN rm -rf /var/lib/apt/lists/*

