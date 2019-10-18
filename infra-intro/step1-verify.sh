#!/usr/bin/env bash

PKG_OK=$(dpkg-query -W --showformat='${Status}\n' newrelic-infra | grep "install ok installed")
if [ ! "" == "$PKG_OK" ]; then
    echo "done"
fi
