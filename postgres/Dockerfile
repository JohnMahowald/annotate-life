###############################################################
# Configuration for [ LOCAL ] development database
#
# [ postgres:14 ] image is a public distribution.
# See [ https://hub.docker.com/_/postgres ] for more reference.
#
FROM postgres:9.4

ARG POSTGRES_PASSWORD
ARG DB_NAME
ARG DB_USER
ENV POSTGRES_HOST_AUTH_METHOD password

ADD  ./scripts/init-db.sh /docker-entrypoint-initdb.d
