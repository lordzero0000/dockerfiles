# CoreOS & Kubernetes 

This repository contains **Dockerfile** of [Google Kubernetes](https://github.com/GoogleCloudPlatform/kubernetes) on [CoreOS](https://coreos.com) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/guttertec/coreos-kubernetes/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

* [ubuntu:14.04](https://registry.hub.docker.com/u/library/ubuntu/)

## Build Kubernetes Binaries 

### Build the Binaries

Build the binaires using docker. The resulting image exports a data volume containing the apiserver, kubecfg, proxy, kubelet, and controller-manager binaries under /kubernetes.

```
git clone https://github.com/kelseyhightower/kubernetes-coreos.git
cd kubernetes-coreos
docker build --no-cache -t kelseyhightower/kubernetes-binaries:latest .
```

#### Copy the Binaries

Run a named container and copy the binaries using the docker cp command.

```
docker run --name kubernetes-binaries kelseyhightower/kubernetes-binaries:latest /bin/sh
docker cp kubernetes-binaries:/kubernetes-binaries/ .
```

**Be sure to remove the existing container before doing do builds**

`docker rm kubernetes-binaries`