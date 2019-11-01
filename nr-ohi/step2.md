For this example, we'll install the New Relic MySQL database monitoring OHI.  Installation of other OHIs follow the same pattern.

More detailed instructions and information on the OHI's capabilities can be found on [docs.newrelic.com](https://docs.newrelic.com/docs/integrations/host-integrations/host-integrations-list/mysql-monitoring-integration)

- Install the MySQL integration:
`sudo apt-get install nri-mysql -y`{{execute}}

- Navigate to the New Relic integrations folder:
`cd /etc/newrelic-infra/integrations.d`{{execute}}

- Copy the sample configuration file:
`sudo cp mysql-config.yml.sample mysql-config.yml`{{execute}}

- Open the configuration file in an editor:
`mysql-config.yml`{{open}}

- Each on-host integration has a technology specific configuration file that must be edited to reflect your environment.  In the case of the MySQL OHI, we must to edit the following items:
     - `hostname: localhost`
     - `username: root`
     - `password: root`

#### NOTE
To keep this example simple, we are using the root account to collect MySQL performance metrics.  You should not do this in production.  See the New Relic __Install and Activate__ documentation at [docs.newrelic.com](https://docs.newrelic.com/docs/integrations/host-integrations/host-integrations-list/mysql-monitoring-integration) for details.

- Restart the New Relic agent:
`sudo systemctl restart newrelic-infra`{{execute}}
