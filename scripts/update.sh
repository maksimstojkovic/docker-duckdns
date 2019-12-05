#!/bin/sh

# Extract subdomain from DUCKDNS_DOMAIN
DUCKDNS_SUBDOMAIN=$(echo $DUCKDNS_DOMAIN | tr '.' '\n' | head -n 1)

# Check if subdomain extraction failed
if [ -z "$DUCKDNS_SUBDOMAIN" ]; then
  echo ERROR: Invalid value for DUCKDNS_DOMAIN
  exit 1
fi

# Loop update infinitely
while :; do
  echo url="https://www.duckdns.org/update?domains=${DUCKDNS_SUBDOMAIN}&token=${DUCKDNS_TOKEN}&ip=" | curl -ks -o /scripts/duck.log -K -

  # Check that log was created (successful curl) and
  if [ ! -f "/scripts/duck.log" ]; then
    echo ERROR: Failed to create Duck DNS log file, check your TOKEN and DOMAIN
    exit 1
  fi

  if [ "$(cat /scripts/duck.log)" != "OK" ]; then
    echo ERROR: IP address update failed, check your TOKEN and DOMAIN
    exit 1
  fi

  # Wait before updating ip address again
  echo Successfully updated IP address
  echo Sleeping for $DUCKDNS_DELAY minute\(s\)
  sleep $((${DUCKDNS_DELAY} * 60))
done
