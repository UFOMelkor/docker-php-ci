#!/bin/bash

if [[ -z "$WITHOUT_ZIP_EXTENSION" ]]
then
    docker-php-ext-enable zip
fi

if [[ -z "$WITHOUT_COMPOSER_SELF_UPDATE" ]]
then
    composer self-update
fi

/bin/bash /entrypoint.sh

exec "$@"
