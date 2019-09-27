More detailed instructions can be found on [docs.newrelic.com](https://docs.newrelic.com/docs/integrations/host-integrations/host-integrations-list/nagios-monitoring-integration)

* Install the SNMP integration
`sudo apt-get install nri-snmp -y`{{execute}}

* Navigate to the New Relic integrations folder:
`cd /etc/newrelic-infra/integrations.d`{{execute}}

* Copy the sample base configuration file 
`sudo cp snmp-config.yml.sample snmp-config.yml`{{execute}}

* Copy the metrics configuration file
`sudo cp snmp-metrics.yml.sample snmp-metrics.yml`{{execute}}

* Restart the New Relic agent
After restarting the agent, the SNMP agent will be polled and the output will be sent to New Relic
`sudo systemctl restart newrelic-infra`{{execute}}
