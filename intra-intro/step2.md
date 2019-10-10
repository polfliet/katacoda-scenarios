Now that we have a running agent, let's take a look at the configuration. We're going to add a couple of labels (so we can more easily find a group of servers), as well as change the hostname.

When the New Relic agent is installed it will create a `/etc/newrelic-infra` directory. Let's take a look at what's inside that directory.

`ls /etc/newrelic-infra`{execute}

When installing New Relic Infrastructure OHI's (On host integrations) you will find them in this directory, including the configuration file.

The New Relic agent also has a configuration file `newrelic-infra.yml` which you can find in `/etc`.

`cat /etc/newrelic-infra.yml`{execute}

Let's add some labels and change the hostname of our agent. To do that, open `/etc/newrelic-infra.yml` in your favorite editor. (If you don't have one, you can use `nano`. [Here is a quick tutorial on `nano` to get your started.](https://wiki.gentoo.org/wiki/Nano/Basics_Guide))

We're going to add some labels to make it easier to group our hosts in the future. In this case we're adding the location of the server, the group that's managing it, and the environment. Copy paste this information into the `/etc/newrelic-infra.yml` file. You can always add your own labels to test.

```
custom_attributes:
    environment: staging
    location: eu-brussels-1
    team: ops-falcon
```

Next thing is to change our display name, this can be handy in environments where a lot of hosts share the same name. Changing the display name to something unique will make it easier to find the host in New Relic UI. Again copy paste this information in the `/etc/newrelic-infra.yml` file.

```
display_name: app1-staging-eu
```

You can now save the `newrelic-infra` file and restart the agent. Restarting the agent can be done by running the following command. In this case we're using the service command, keep in mind that this might be different depending on the Operating System, or if you're using the New Relic Dockerized agent.

`service newrelic-infra restart`

After restarting the agent you will see a new host appear in the New Relic UI, with the `display_name` you've given it.

Congratulations, you've now installed and configured a New Relic Infrastructure agent. In the next step we'll take a look at the data that the agent is sending to the New Relic platform.

