We have an SNMP agent running on this machine that simulates a host, a router and a UPS device

### Check SNMP simulator
The simulator is being installed in the background. Please wait 1 minute.

Let's then check if we can get SNMP data using *snmpwalk*
`snmpwalk -v2c -c linksys 127.0.0.1:1024`{{execute}}

TODO SCREENSHOT OF OUTPUT

