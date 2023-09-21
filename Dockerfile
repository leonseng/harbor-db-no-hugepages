# References:
# - https://github.com/goharbor/harbor/blob/main/make/photon/db/Dockerfile.base
# - https://github.com/docker-library/postgres/issues/451#issuecomment-871109581

ARG HARBOR_DB_VERSION
FROM goharbor/harbor-db:${HARBOR_DB_VERSION}

RUN cat /usr/pgsql/*/share/postgresql/postgresql.conf.sample
USER root
RUN sed -i -r 's/#huge_pages.*?/huge_pages = off/g' /usr/pgsql/*/share/postgresql/postgresql.conf.sample
USER postgres
