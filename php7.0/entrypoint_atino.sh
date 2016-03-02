#!/bin/bash

composer self-update

/bin/bash /entrypoint.sh

exec "$@"
