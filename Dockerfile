# References:
# - https://github.com/goharbor/harbor/blob/main/make/photon/db/Dockerfile.base
# - https://github.com/docker-library/postgres/issues/451#issuecomment-871109581

FROM goharbor/harbor-db:v2.5.5


RUN cat /usr/pgsql/13/share/postgresql.conf.sample
USER root
RUN sed -i -r 's/#huge_pages.*?/huge_pages = off/g' /usr/pgsql/13/share/postgresql.conf.sample
USER postgres
