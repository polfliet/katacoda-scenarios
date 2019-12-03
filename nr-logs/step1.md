New Relic Logs currently supports multiple Open Source Log clients. In this example, we are going to us FluentD (https://docs.fluentd.org/installation/install-by-deb).

Testing without "Step 0: Before Installation"

Step 1: Install from Apt Repository
`curl -L https://toolbelt.treasuredata.com/sh/install-ubuntu-bionic-td-agent3.sh | sh`{{execute}}

Step 2: Launch Daemon
`sudo systemctl start td-agent.service`{{execute}}

You can verify it is running with:
`sudo systemctl status td-agent.service`{{execute}}
