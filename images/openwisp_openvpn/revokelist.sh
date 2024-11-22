#!/bin/sh

# This script will be called by cronjob to
# update CRL periodically.
source /utils.sh

openvpn_config
echo "`date -Iseconds` Update CRL"
crl_download
