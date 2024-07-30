FROM wordpress:latest

WORKDIR /var/www/html

ENV COMPOSER_ALLOW_SUPERUSER=1

# Modify apache2 configuration to work better in Docker
COPY ["./ports.conf","/etc/apache2/ports.conf"]
COPY ["./000-default.conf","/etc/apache2/sites-available/000-default.conf"]

# Install WP-CLI, vim, nodejs and npm
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    apt update && \
    apt upgrade -y && \
    apt install -y vim nodejs npm
