#!/usr/bin/env bash

CONFIG_OK=$(cat /etc/newrelic-infra.yml | grep "custom_attributes")
if [ ! "" == "$CONFIG_OK" ]; then
    echo "done"
fi
