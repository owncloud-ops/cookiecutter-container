# {{ cookiecutter.image_name | lower }}

[![Build Status](https://drone.owncloud.com/api/badges/{{ cookiecutter.git_org }}/{{ cookiecutter.image_name | lower }}/status.svg)](https://drone.owncloud.com/{{ cookiecutter.git_org }}/{{ cookiecutter.image_name | lower }}/)
[![Docker Hub](https://img.shields.io/badge/docker-latest-blue.svg?logo=docker&logoColor=white)](https://hub.docker.com/r/{{ cookiecutter.dockerhub_namespace }}/{{ cookiecutter.image_name | lower }})

Custom container image for {{ cookiecutter.image_name | capitalize }}.

## Ports

## Volumes

## Environment Variables

```Shell

```

## Build

You could use the `BUILD_VERSION` to specify the target version.

```Shell
docker build -f Dockerfile -t {{ cookiecutter.image_name | lower }}:latest .
```

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](https://{{ cookiecutter.git_server }}/{{ cookiecutter.git_org }}/{{ cookiecutter.image_name | lower }}/blob/master/LICENSE) file for details.
