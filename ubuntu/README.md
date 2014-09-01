---
title: "Docker: Ubuntu Precise"
slug: "docker-container-ubuntu-precise"
date: 2014-09-01 08:57
categories: [virtualization]
tags: [docker, virtualization, ubuntu, linux, devops, container]
published: true
---

# Ubuntu Precise Pangolin

This is my personal base image of Ubuntu Precise Pangolin.  
The container is still in its early stage of development. I did some cleanups and accelerations in the beginning and installed some additional software to my needs.

## Additional packages installed

* curl
* git
* htop
* man
* tmux 
* unzip
* vim
* wget
* make
* zsh

## Additions from source installed

* Oh My Zsh

## To Do

* set environment variables
* define working directory
* configure Oh My Zsh to my personal settings: .zshrc
* configure tmux: tmux.conf
* configure Vim: .vim, .vimrc.after, .vimrc.before. ,janus
* configure wget: .wgetrc