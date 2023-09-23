# gobuilder

## Description

Official Go Docker image with additional tools such as:

* [Staticcheck](https://staticcheck.dev)

### Docker Bake

Images are build using Docker Bake build orchestration tool.

Example:  
build image with version v5

```bash
VERSION=v5 docker buildx bake
```

build image with Go 1.20 and v99

```bash
GO_VER=1.20 VERSION=v99 docker buildx bake
```

### Docker image published at [cyfrowy/gobuilder](https://hub.docker.com/r/cyfrowy/gobuilder)
