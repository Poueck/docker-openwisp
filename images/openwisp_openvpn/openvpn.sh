#!/bin/sh

# This script will be called by cronjob to
# update OpenVPN configurations periodically.
source /utils.sh

default_psql_vars
openvpn_config
openvpn_config_checksum

if [ "${OFILE}" != "${NFILE}" ]; then
	echo "`date` OpenVPN configuration change (actual checksum = $NFILE, new checksum = $OFILE), download new configuration and restart OpenVPN"
	openvpn_config_download
	supervisorctl restart openvpn
fi
