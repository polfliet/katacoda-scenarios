For this example, we'll install the New Relic MySQL database monitoring OHI.  Installation of other OHIs follow the same pattern.

More detailed instructions can be found on [docs.newrelic.com](https://docs.newrelic.com/docs/integrations/host-integrations/host-integrations-list/mysql-monitoring-integration)

* Install the MySQL integration
`sudo apt-get install nri-mysql -y`{{execute}}

* Navigate to the New Relic integrations folder:
`cd /etc/newrelic-infra/integrations.d`{{execute}}

* Copy the sample configuration file
`sudo cp mysql-config.yml.sample mysql-config.yml`{{execute}}

* Open the configuration file in an editor.
`mysql-config.yml`{{open}}

* Restart the New Relic agent
After restarting the agent, the check_users Nagios script will be executed and the output will be sent to New Relic
`sudo systemctl restart newrelic-infra`{{execute}}
