---
currentMenu: configuration
---

# Configuration

 - [Enable PHP extension](#enable-php-extension)
 - [Enable XDebug](#enable-xdebug)
 - [Configure PHP](#configure-php)
 - [Set memory limit](#set-memory-limit)
 - [Timezone](#timezone)
 - [Disable composer self-update](#disable-composer-self-update)
 - [Disable Zip extension](#disable-zip-extension)
 - [Set GitHub token for composer](#set-github-token-for-composer)

## Enable PHP Extension

To enable an extension run
```
docker-php-ext-enable EXTENSION1 EXTENSION2
```

Valid extensions are:
 - bcmath
 - bz2
 - calendar
 - dba
 - enchant
 - exif
 - ftp
 - gd
 - gettext
 - gmp
 - imagick
 - imap
 - intl
 - ldap
 - mbstring
 - mcrypt
 - mongodb
 - mysqli
 - opcache
 - pcntl
 - pdo
 - pdo_dblib
 - pdo_mysql
 - pdo_pgsql
 - pgsql
 - pspell
 - shmop
 - snmp
 - soap
 - sockets
 - sysvmsg
 - sysvsem
 - sysvshm
 - tidy
 - wddx
 - xdebug
 - xmlrpc
 - xsl
 - zip

## Enable XDebug

To enable XDebug for all tasks you can set the environment variable `WITH_XDEBUG` to `1`.
This will not work on PHP 7 because currently there is no XDebug extension available.

If you want to run it just for a specific setup, you can run
```
docker-php-ext-enable xdebug
```

## Configure PHP

To configure PHP you have to provide an own `php.ini` and copy it the configuration folder:

```
cp my.ini /usr/local/etc/php/conf.d/my.ini
```

The name of your file does not matter as long as it does not override an existing file.

## Set memory limit

The default memory limit is 1024MB.
If you want to change this set an environment variable `MEMORY_LIMIT` e.g. with `512M`.

## Timezone

By default the `UTC` timezone will be used. To change this set the environment variable `TIMEZONE` e.g. to
`Europe/Berlin`.

## Disable composer self-update

To disable the composer self-update you can set the environment variable `WITHOUT_COMPOSER_SELF_UPDATE` to `1`.

## Disable Zip extension

To disable the Zip extension you can set the environment variable `WITHOUT_ZIP_EXTENSION` to `1`.

## Set GitHub token for composer

To set the GitHub token for composer to [avoid problems with the GitHub API rate limit](https://getcomposer.org/doc/articles/troubleshooting.md#api-rate-limit-and-oauth-tokens)
set the environment variable `COMPOSER_GITHUB` to your token.
