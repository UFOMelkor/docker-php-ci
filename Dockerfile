FROM tetraweb/php:5.6
MAINTAINER Jan Bartel <jan.bartel@atino.de>
ENV DEBIAN_FRONTEND noninteractive

# Install dependencies for intl-ext
RUN apt-get update && apt-get install -y libicu-dev

# Install imagick (not supported via docker-php-ext-enable, so we will enable it here automatically)
RUN apt-get update && apt-get install -y libmagickwand-dev --no-install-recommends
RUN printf "\n" | pecl install imagick-beta

# Install common npm dependencies
RUN npm install less -g
RUN npm install uglify-js -g
RUN npm install uglifycss -g
RUN npm install yuicompressor -g
RUN npm install bower -g

# Install ruby dependencies
RUN apt-get update && apt-get install -y rubygems ruby-dev
RUN gem install compass

# Add own entrypoint
COPY entrypoint_atino.sh /entrypoint_atino.sh
ENTRYPOINT ["/entrypoint_atino.sh"]
