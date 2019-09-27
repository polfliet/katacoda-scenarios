We have an SNMP agent running on this machine that simulates a host, a router and a UPS device

### Check SNMP simulator

Let's first check if we can get SNMP data using *snmpwalk*
`snmpwalk -v2c -c linksys 127.0.0.1:1024`{{execute}}

