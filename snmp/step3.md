More detailed instructions can be found on [docs.newrelic.com](https://docs.newrelic.com/docs/integrations/host-integrations/host-integrations-list/nagios-monitoring-integration)

### Install the SNMP integration
`sudo apt-get install nri-snmp -y`{{execute}}

### Move the SNMP configuration file
Have a look at the SNMP configuration file. In this file we provide the SNMP agent connection details. In our case all SNMP agents are running locally

`cat snmp-config.yml`{{execute}}

Move the configuration file in the New Relic Integrations directory:
`sudo mv snmp-config.yml /etc/newrelic-infra/integrations.d`{{execute}}

### Move the SNMP metrics files
For each device we have a metrics file, which defines what metrics to collect.
Have a look at one of them and copy them over

`cat snmp-metrics-host.yml`{{execute}}

`sudo mv snmp-metrics-host.yml /etc/newrelic-infra/integrations.d`{{execute}}

`sudo mv snmp-metrics-router.yml /etc/newrelic-infra/integrations.d`{{execute}}

`sudo mv snmp-metrics-ups.yml /etc/newrelic-infra/integrations.d`{{execute}} (TODO, not yet working)

### Restart the New Relic agent
After restarting the agent, the SNMP agent will be polled and the output will be sent to New Relic
`sudo systemctl restart newrelic-infra`{{execute}}
