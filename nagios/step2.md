More detailed instructions can be found on [docs.newrelic.com](https://docs.newrelic.com/docs/integrations/host-integrations/host-integrations-list/nagios-monitoring-integration)

* Install the Nagios integration
`sudo apt-get install nri-nagios -y`{{execute}}

* Navigate to the New Relic integrations folder:
`cd /etc/newrelic-infra/integrations.d`{{execute}}

* Copy the sample configuration file 
`sudo cp nagios-config.yml.sample nagios-config.yml`{{execute}}

* Check the contents of the service_checks.yml file. This file contains the Nagios scripts that will be executed by the New Relic agent.
`sudo cat /etc/newrelic-infra/integrations.d/service_checks.yml`{{execute}}
This example file contains 1 service check.

The check_users Nagios script is already available on this machine. 

* The service_checks.yml file requires permissive file permissions (0600)
`sudo chmod 600 /etc/newrelic-infra/integrations.d/service_checks.yml`{{execute}}

* Restart the New Relic agent
After restarting the agent, the check_users Nagios script will be executed and the output will be sent to New Relic
`sudo systemctl restart newrelic-infra`{{execute}}
