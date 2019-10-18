
## New Relic One Chart Builder

Go to [one.newrelic.com](https://one.newrelic.com)

Open the Chart builder to explore the data. Click on the Chart builder in the top right corner.

![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/nagios/screenshots/chartbuilder.png?raw=true "Chart Builder")

The data is stored in NagiosSample, so we can query:
`FROM NagiosServiceCheckSample SELECT * limit 5`

![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/nagios/screenshots/query1.png?raw=true "Query")

Use the following query to check the status and output of the Nagios script:
`FROM NagiosServiceCheckSample select serviceCheck.name, serviceCheck.status, serviceCheck.serviceOutput limit 5`

![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/nagios/screenshots/query2.png?raw=true "Query2")

To visualize the status of a Nagios script over time, use:
`FROM NagiosServiceCheckSample select latest(serviceCheck.status) where serviceCheck.name = 'check_users' TIMESERIES`

![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/nagios/screenshots/chart.png?raw=true "Chart")
