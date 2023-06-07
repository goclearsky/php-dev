# PHP Apache Dev

Includes both composer v1 and v2, various database pdo's, and other elements required for general dev and test.

# Makefile

Include the push option to automatically push to docker hub.

```
make [push=true] <version>
```

* Versions
  * 7.1, 7.2, 7.3, 7.4
  * 8.0, 8.1, 8.2

# docker-compose

```
services:
  php71:
    container_name: php71
    image: goclearsky/php-apache-dev:7.1
    restart: always
    ports:
      - "7180:80"
      - "7143:443"
    depends_on:
      - db
    volumes:
      - ${PWD}:/var/www/html
      - /srv/composer-cache:/var/www/.composer
```

# Access the shell as www-data

```
docker exec -it --user www-data php71 /bin/bash
```
