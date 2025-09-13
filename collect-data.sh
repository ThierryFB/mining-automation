#!/bin/bash
mkdir -p /web

while true; do
    axpert-query -c QPIGS > /web/status.json
    sleep 300
done