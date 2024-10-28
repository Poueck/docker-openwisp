#!/bin/sh

# This script will be called by cronjob to
# update CRL periodically.
source /utils.sh

default_psql_vars
openvpn_config
crl_download
supervisorctl restart openvpn
