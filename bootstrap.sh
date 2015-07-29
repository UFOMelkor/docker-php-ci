#!/bin/bash

/entrypoint.sh

if [[ ! -z "$PRIVATE_REPOSITORY_HOST" ]] && [[ ! -z "$PRIVATE_REPOSITORY_USER" ]] && [[ ! -z "$PRIVATE_REPOSITORY_PASSWORD" ]];
then
      composer config -g http-basic.${PRIVATE_REPOSITORY_HOST} $PRIVATE_REPOSITORY_USER $PRIVATE_REPOSITORY_PASSWORD
      echo "HOST AUTHENTIFICATION COMPLETED"
fi
