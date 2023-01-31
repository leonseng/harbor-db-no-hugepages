# Harbor DB

Fix for [goharbor/harbor-db](https://registry.hub.docker.com/r/goharbor/harbor-db) crashing when deployed in Kubernetes.

The fix involves disabling huge pages in PostgreSQL config per references below:

- https://github.com/goharbor/harbor/blob/main/make/photon/db/Dockerfile.base
- https://github.com/docker-library/postgres/issues/451#issuecomment-871109581

## Instructions
```
git clone github.com/leonseng
docker build -t leonseng/harbor-db:v2.5.5-no-hugepages ./
docker push leonseng/harbor-db:v2.5.5-no-hugepages
```

## References:
