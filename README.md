# Advanced Deployment Openshift Container Platform: Homework Solution

Author: Brian Tomlinson <btomlins@redhat.com> / <darthlukan@gmail.com>


## Description

This repository contains my solution to the homework assigned on the last day of class. I've decided to use
[casl-ansible](https://github.com/redhat-cop/casl-ansible) as the "framework" for my solution as it checks a bunch of
the boxes for the assignment and the extra credit.  The readme for casl is retained in thie repo [here](casl-README.adoc).


## The Assignment / What this repo does

With this repo's inventory and playbooks, I will have:

1. Openshift Container Platform (OCP) 3.11.16 installed
2. The cluster is Highly Available (HA)
3. Core OCP components, and metrics, are correctly configured
4. The environment is multitenant
5. There is a functioning CI/CD pipeline (Jenkins) with full promotion workflow
6. OCS 3.11 (GlusterFS) is correctly installed and configured to provide cluster storage
