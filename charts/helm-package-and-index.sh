#!/usr/bin/env bash

find . -mindepth 1 -maxdepth 1 -type d \! -name "README.md" \! -name "hdfs-k8s" | cut -c 3- | while read d ; do helm package $d ; done
helm repo index .
