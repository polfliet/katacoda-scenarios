Detailed instructions for all Linux platforms can be found on [docs.newrelic.com](https://docs.newrelic.com/docs/infrastructure/install-configure-manage-infrastructure/linux-installation/install-infrastructure-linux-using-package-manager)

- Get your New Relic license key.
     - First, log in to rpm.newrelic.com.
     - Click on your account name in the top-right corner and go to __Account Settings__.
     - Copy your license key from the right hand side of the page.

- Create a configuration file, and add your license key:
`echo "license_key: YOUR_LICENSE_KEY" | sudo tee -a /etc/newrelic-infra.yml`{{copy}}
*Don't forget to update YOUR_LICENSE_KEY*

- Add New Relic's GPG key to your keychain:
`curl https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg | sudo apt-key add -`{{execute}}

- Add New Relic's APT package repository:
`printf "deb [arch=amd64] https://download.newrelic.com/infrastructure_agent/linux/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/newrelic-infra.list`{{execute}}

- Update the APT package manager with info from the new repository:
`sudo apt-get update`{{execute}}

- Install New Relic Infrastructure agent:
`sudo apt-get install newrelic-infra -y`{{execute}}

- Confirm that the Infra agent is reporting to New Relic by going to http://rpm.newrelic.com, clicking on __Infrastructure__ and seeing that the new host appears.
