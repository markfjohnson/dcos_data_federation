#!/usr/bin/env bash

dcos package install --yes hdfs
dcos package install --yes marathon-lb
dcos package install --yes dcos-enterprise-cli --cli
#dcos package install --yes mysql
dcos package install --yes spark --options=spark-options.json
#dcos marathon app add https://github.com/vishnu2kmohan/livy-dcos-docker/raw/master/livy-marathon.json
curl -O n
dcos marathon app add beakerx-sparkmagic-marathon.json
#dcos marathon app add dcos_dremio.json

#JupyterHub access: publicIp:10103 - password:jupyter