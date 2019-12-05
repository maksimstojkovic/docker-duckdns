#!/bin/sh

# Check variables DUCKDNS_TOKEN, DUCKDNS_DOMAIN, DUCKDNS_DELAY
if [ -z "$DUCKDNS_TOKEN" ]; then
	echo ERROR: Variable DUCKDNS_TOKEN is unset
	exit 1
fi

if [ -z "$DUCKDNS_DOMAIN" ]; then
	echo ERROR: Variable DUCKDNS_DOMAIN is unset
	exit 1
fi

if [ -z "$DUCKDNS_DELAY" ]; then
	echo ERROR: Variable DUCKDNS_DELAY is unset
	exit 1
fi

# Print variables
echo DUCKDNS_TOKEN: $DUCKDNS_TOKEN
echo DUCKDNS_DOMAIN: $DUCKDNS_DOMAIN
echo DUCKDNS_DELAY: $DUCKDNS_DELAY minute\(s\)

# Suggest longer delay if below 5 minutes
if [ "$DUCKDNS_DELAY" -lt 5 ]; then
  echo WARNING: Consider using a delay of at least 5 minutes
fi

# Start automatic ip address updates
/bin/sh /scripts/update.sh
