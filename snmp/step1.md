We have an SNMP agent running on this machine that simulates a host and a network router.

### Check SNMP simulator
The simulator is being installed in the background. *Please wait 1 minute.*

Let's then check if we can get SNMP data using *snmpwalk*
`snmpwalk -v2c -c linksys 127.0.0.1:1024`{{execute}}

![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/snmp/screenshots/snmpwalk.png?raw=true "SNMPWalk")

*More devices can be simulated, [check this repository](https://github.com/librenms/librenms/tree/master/tests/snmpsim)*