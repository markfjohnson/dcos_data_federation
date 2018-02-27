# Install DC/OS Data Analytics example support files

## Requirements
* DC/OS cluster 1.10+ with at least 9 nodes and 1 public node.  Make certain to capture the public node IP addresses.

## Installation Steps
1. run shell script ```installation/setup_data_federation_example.sh``` to perform the installation
2. Wait until the HDFS, marathon-lb, beakerx and Spark services are reported healthy
3. Check HA proxy screen at http://{public ip}:9090/haproxy?stats and look for beakerx.  The number at the end of the beakerx_ process name will be the port you will use to connect to JupyterHub.
3. try to login into JupyterHub by opening the URL http://{public IP}:{ha proxy port found in prior step}.  Enter the password 'jupyter' to enter the jupyter hub notebook

## Gotchas
* The installation scripts used here are not enabling persistent storage (though that is very possible) just to keep the examples easier.
