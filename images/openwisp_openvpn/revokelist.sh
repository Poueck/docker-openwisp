#!/bin/sh

# This script will be called by cronjob to
# update CRL periodically.
source /utils.sh

openvpn_config
echo "`date` Update CRL"
crl_download
# Restarting openvpn is not needed
#supervisorctl restart openvpn
