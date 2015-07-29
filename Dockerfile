FROM tetraweb/php:5.6
MAINTAINER Jan Bartel <jan.bartel@atino.de>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y ssh

RUN composer config -g http-basic.${PRIVATE_REPOSITORY_HOST} $PRIVATE_REPOSITORY_USER $PRIVATE_REPOSITORY_PASSWORD
