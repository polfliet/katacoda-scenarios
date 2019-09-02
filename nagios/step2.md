## Install New Relic Nagios integration

More detailed instructions can be found on [docs.newrelic.com](https://docs.newrelic.com/docs/integrations/host-integrations/host-integrations-list/nagios-monitoring-integration)

* Install the Nagios integration
`sudo apt-get install nri-nagios`{{execute}}

* Navigate to the New Relic integrations folder:
`cd /etc/newrelic-infra/integrations.d`{{execute}}

* Copy the sample configuration file 
`sudo cp nagios-config.yml.sample nagios-config.yml`{{execute}}

* Create a copy of the sample service checks file
`sudo cp nagios-service-checks.yml.sample nagios-service-checks.yml`{{execute}}


* Check the contents of the nagios-service-checks.yml file
`sudo cat /etc/newrelic-infra/integrations.d/nagios-service-checks.yml`{{execute}}
The check_users Nagios script is already available on this machine. 

* Restart the New Relic agent
After restarting the agent, the check_users Nagios script will be executed and the output will be sent to New Relic
`sudo systemctl restart newrelic-infra`{{execute}}
