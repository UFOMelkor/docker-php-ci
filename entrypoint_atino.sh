#!/bin/bash

if [[ -z "$WITHOUT_ZIP_EXTENSION" ]]
then
    docker-php-ext-enable zip
fi

if [[ -z "$WITHOUT_COMPOSER_SELF_UPDATE" ]]
then
    composer self-update
fi

if [[ -z "$MEMORY_LIMIT" ]]
then
    MEMORY_LIMIT = "1024M"
fi

echo "memory_limit=$MEMORY_LIMIT" > /usr/local/etc/php/conf.d/memory-configuration.ini

/entrypoint.sh

exec "$@"
