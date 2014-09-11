# CoreOS & Kubernetes 

This repository contains **Dockerfile** of [Google Kubernetes](https://github.com/GoogleCloudPlatform/kubernetes) on [CoreOS](https://coreos.com) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/guttertec/coreos-kubernetes/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

* [ubuntu:14.04](https://registry.hub.docker.com/u/library/ubuntu/)

## Installation

* [Quick Start](#quick-start)
* [Building Kubernetes Binaries](docs/build.md)
* [Networking Guide](docs/networking.md)
* [Installation Guide](docs/installation.md)

### Quick Start

The following steps will setup a single node Kubernetes cluster. For a more robust setup using cloud-config see the [Installation Guide](docs/installation.md).

### Install Kubernetes binaries

```
sudo mkdir -p /opt/bin
sudo wget https://storage.googleapis.com/kubernetes/binaries.tar.gz
sudo tar -xvf binaries.tar.gz -C /opt/bin
```

### Add the Kubernetes systemd units

```
git clone https://github.com/kelseyhightower/kubernetes-coreos.git
sudo cp kubernetes-coreos/units/* /etc/systemd/system/
```

### Start the Kubernetes services

```
sudo systemctl start apiserver
sudo systemctl start controller-manager
sudo systemctl start kubelet
sudo systemctl start proxy
```

### Running commands remotely

Setup a SSH tunnel to the Kubernetes API Server.  
`sudo ssh -f -nNT -L 8080:127.0.0.1:8080 core@${APISERVER}`

Download a kubecfg client

**Darwin**  
`wget https://storage.googleapis.com/kubernetes/darwin/kubecfg -O /usr/local/bin/kubecfg`

**Linux**  
`wget https://storage.googleapis.com/kubernetes/kubecfg -O /usr/local/bin/kubecfg`

Issue commands remotely using the kubecfg command line tool.  
`kubecfg list /pods`