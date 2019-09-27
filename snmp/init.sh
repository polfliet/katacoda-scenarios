#!/bin/bash

sudo apt-get install snmpsim
snmpsimd --data-dir=./assets --agent-udpv4-endpoint=127.0.0.1:1024
