# dockerized-docs-kubernetes

# What is it? #
Dockerzied kubernetes.io site + kubernetes documentation for offline use.

# Image description #
- Base image: `alpine:3.3`
- The most current kubernetes.io branch is cloned.
- Jekyll is installed using bundle.

# How to use this image #

```console
$ docker run -d genadipost/dockerized-docs-kubernetes

```
You can test it by visiting http://container-ip:8080
