# Harbor DB

Fix for [goharbor/harbor-db](https://registry.hub.docker.com/r/goharbor/harbor-db) crashing when deployed in Kubernetes.

The fix involves disabling huge pages in PostgreSQL config per references below:

- https://github.com/goharbor/harbor/blob/main/make/photon/db/Dockerfile.base
- https://github.com/docker-library/postgres/issues/451#issuecomment-871109581

## Instructions
```
git clone github.com/leonseng/harbor-db-no-hugepages
cd harbor-db-no-hugepages

# build Docker image
./scripts/build.sh

# publish Docker image leonseng/harbor-db
./scripts/publish.sh
```

   
