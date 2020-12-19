---
title: Does SELinux save you against rm -rf ?
author: Sahil Ahuja
date: 2018-02-12T13:18:46+05:30
tags: [ "fedora", "selinux" ]
categories: [ "blog" ]
---

Always wondered if there is way in SELinux to disable the [deadly](/post/2016/Not-funny-one-of-every-six-times) `rm -rf` at `/` path.
Maybe the command `rm` can be asked by selinux not to allow anyone to run it at `/` location with the option `-rf *`?

Could never find the time to experiment in a VM to find out. Have you?
Please let me know through the comments section!
