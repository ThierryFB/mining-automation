#!/bin/bash
mkdir -p /web

while true; do
    axpert-query -c QPIGS | grep -v "Sending command:"  > /web/status.json
    sleep 300
done