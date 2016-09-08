# php7-fpm-alpine

> [PHP-FPM](http://php-fpm.org/) (FastCGI Process Manager) is an alternative PHP FastCGI implementation with some additional features useful for sites of any size, especially busier sites.

> [Alpine Linux](http://alpinelinux.org/) is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

**From :** [php:7.0.10-fpm-alpine](https://hub.docker.com/r/library/php/)

**Installed php extensions:** redis, pdo, pdo_mysql, mysqli, mbstring, tokenizer

# Get the image

The recommended way to get the eteplus PHP-FPM-Alpine Docker Image is to pull the prebuilt image from the [Docker Hub Registry](https://hub.docker.com/r/eteplus/php7-fpm-alpine)

```bash
docker pull eteplus/php-fpm-alpine:latest
```

If you wish, you can also build the image yourself.

```bash
docker build -t eteplus/php7-fpm-alpine https://github.com/eteplus/php7-fpm-alpine.git
```

Run a new container

```bash
docker run -it --name phpfpm -v /path/to/www:/var/www/html eteplus/php7-fpm-alpine
```

# Docker Compose

```
phpfpm:
  image: eteplus/php7-fpm-alpine
  volumes:
    - /path/to/www:/var/www/html
```

# License
The MIT License






