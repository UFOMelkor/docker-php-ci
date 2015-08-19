# docker-php-ci

A ci environment for php applications

## Instructions to install php-extensions:

### intl

```bash
docker-php-ext-install intl >/dev/null 2>&1
docker-php-ext-enable intl >/dev/null 2>&1
```

### Imagick

```bash
pecl install imagick-beta >/dev/null 2>&1
echo "extension=imagick.so" > /usr/local/etc/php/conf.d/ext-imagick.ini
```

### LDAP

```bash
docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/
docker-php-ext-install ldap
docker-php-ext-enable ldap
```
