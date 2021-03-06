
New Relic's FluentBit plugin allows us to collect log files generated by the containers in our cluster

### Install FluentBit and the New Relic FluentBit plugin
The yaml files are already available on our machine, we can apply it:

`kubectl apply -f rbac.yml -f fluent-conf.yml -f new-relic-fluent-plugin.yml`{{execute}}

Confirm that FluentBit is running
`kubectl get pods`{{execute}}

You should see something like:
![FluentBit plugin](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/fluentbit.png?raw=true "New Relic FluentBit plugin")