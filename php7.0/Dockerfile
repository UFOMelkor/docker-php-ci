FROM tetraweb/php:7.0
MAINTAINER Oskar Bley <oskar.bley@atino.de>
ENV DEBIAN_FRONTEND noninteractive

# Install dependencies for intl-ext
RUN apt-get update && apt-get install -y libicu-dev

# Install imagick (not supported via docker-php-ext-enable, so we will enable it here automatically)
RUN apt-get update && apt-get install -y libmagickwand-dev --no-install-recommends
RUN printf "\n" | pecl install imagick-beta
RUN echo "extension=imagick.so" > /usr/local/etc/php/conf.d/ext-imagick.ini

# Increase memory limit
RUN echo "memory_limit=1024M" > /usr/local/etc/php/conf.d/memory-configuration.ini

# Add own entrypoint
COPY entrypoint_atino.sh /entrypoint_atino.sh
ENTRYPOINT ["/entrypoint_atino.sh"]
