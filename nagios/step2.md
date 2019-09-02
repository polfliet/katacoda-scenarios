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

* Add a Nagios check
Open the nagios-service-checks.yml file with the editor
Add the following: ''

* Restart the New Relic agent
`sudo systemctl restart newrelic-infra`{{execute}}


<pre class="file" data-filename="/etc/newrelic-infra/integrations.d/nagios-service-check-editor.js" data-target="replace">service_checks:
  - name: check_users
    command: ["/usr/local/nagios/libexec/check_users", "-w", "5555", "-c", "10"]
    parse_output: true
    labels:
      env: staging
      key1: val1
</pre>