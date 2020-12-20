---
title: "Keep Docker Running"
date: 2018-11-29T14:44:58+05:30
draft: true
author: Sahil Ahuja
tags: [ "kubernetes", "docker", "docker-compose" ]
categories: [ "guide" ]
description: Commands to keep dockers running
---

Many times we need dockers containers to keep running after they are started started either by using a `docker run / docker exec / docker-compose` command or while running as a `kubernetes` pod.

<!--more-->

The following are a few of the command we can use to achieve the same:

1. `sleep inf`
2. `tail -F /dev/null`

These commands need to run as the first thing that these dockers run. So they go as the `entrypoint`. Or if you want flexiblity you can add them as `command`, but ensure that the entrypoint know how to run these. 

These can also be passed directly to the `docker run` command, and later you can start a bash terminal using `docker exec` (instead of starting bash/sh in `docker run` and the using `docker attach`)
