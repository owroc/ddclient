#!/bin/bash
# ddclient startup service
if [ -f "/ddclient/pid/ddclient.pid" ]; then
  rm /ddclient/pid/ddclient.pid
fi
if [ ! -f "/config/ddclient.conf" ]; then
  echo "ddclient.conf does not exist in host directory!!!"
  echo "Rename sample-etc_ddclient.conf to ddclient.conf and configure it or create a new file..."
else
  echo "Configuration exists starting ddclient"
  exec ddclient -foreground -syslog -verbose -pid /ddclient/pid/ddclient.pid -file /config/ddclient.conf -cache /config/cache/ddclient.cache
fi

