FROM webdevops/php-nginx:7.3
MAINTAINER Fizix <arnaud@fizix.io>

ENV POSTGRESQL_HOST=postgresql
ENV POSTGRESQL_PORT=5432
ENV POSTGRESQL_DEFAULT_DB=pg

WORKDIR /app

RUN curl -L "https://github.com/phppgadmin/phppgadmin/releases/download/REL_5-6-0/phpPgAdmin-5.6.0.tar.bz2" | tar --strip-components=1 -x -z && \
    rm -rf conf/config.inc.php-dist CREDITS DEVELOPERS FAQ HISTORY INSTALL TODO TRANSLATORS

ADD config /config
ADD app /app
