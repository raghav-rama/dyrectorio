#!/bin/sh

if [ -z $DISCORD_WEBHOOK_URL ]; then
    echo "No Discord URL was set"
    exit 4
fi

curl -s -H "Content-Type: application/json" \
    -d "{\"content\": \"Updated DAgent on $HOSTNAME\"}" \
    $DISCORD_WEBHOOK_URL