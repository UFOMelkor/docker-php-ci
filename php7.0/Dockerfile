FROM tetraweb/php:7.0
MAINTAINER Oskar Bley <oskar.bley@atino.de>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    libicu-dev \ # Install dependencies for ext-intl
    libmagickwand-dev \ # Install dependencies for ext-imagick
    rubygems ruby-dev

RUN printf "\n" | pecl install imagick-beta

# Install common npm dependencies
RUN npm install less uglify-js uglifycss yuicompressor bower -g

# Install ruby dependencies
RUN gem install compass

# Add own entrypoint
COPY entrypoint_atino.sh /entrypoint_atino.sh
ENTRYPOINT ["/entrypoint_atino.sh"]
