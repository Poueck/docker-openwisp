#!/bin/sh

# This script will be called by cronjob to
# update CRL periodically.
cd /
source /utils.sh

openvpn_config
echo "`date` Update CRL"
crl_download
