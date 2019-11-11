### Validate SNMP data

Go to one.newrelic.com

Open the ChartBuilder (top-right of your screen) and choose the Advanced (NRQL) mode to query SNMPSample: 
`FROM SNMPSample SELECT * limit 10`
![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/snmp/screenshots/query0.png?raw=true "Query")

TODO SCREENSHOT

`FROM SNMPSample select device, `Bytes received` where device = 'router1' limit 10`
![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/nagios/screenshots/query1.png?raw=true "Query")

`FROM SNMPSample select device, `IP Address`, `Operating System` where device = 'host1' limit 10`
![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/nagios/screenshots/query2.png?raw=true "Query")

Thanks for following this tutorial.
Learn more about New Relic's SNMP integration on [docs.newrelic.com](https://docs.newrelic.com/docs/integrations/host-integrations/host-integrations-list/snmp-monitoring-integration)