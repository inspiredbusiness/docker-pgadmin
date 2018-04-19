FROM maxexcloo/nginx-php:latest

ENV POSTGRESQL_HOST=postgresql
ENV POSTGRESQL_PORT=5432
ENV POSTGRESQL_DEFAULT_DB=pg

WORKDIR /app

RUN curl -L "https://github.com/phppgadmin/phppgadmin/archive/REL_5-1-0.tar.gz" | tar --strip-components=1 -x -z && \
    rm -rf conf/config.inc.php-dist CREDITS DEVELOPERS FAQ HISTORY INSTALL TODO TRANSLATORS
WORKDIR /

ADD data/config /config
ADD data/http /app
