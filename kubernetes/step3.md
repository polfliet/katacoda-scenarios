
During this step we will deploy the New Relic Kubernetes integration to our cluster.


### Install the New Relic Kubernetes integration
We are going to deploy a DaemonSet to the cluster.
This DaemonSet will ensure that we have the New Relic Kubernetes agent running on each node of our cluster
The yaml file is already available on our machine, execute the following command to create the DaemonSet:
`kubectl create -f newrelic-infrastructure-k8s-latest.yaml`{{execute}}

Confirm the DaemonSet was created
`kubectl get daemonsets`{{execute}}

You should see something like:
![Daemon set](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/daemonset.png?raw=true "Daemon set")

Confirm that the agent is running
`kubectl get pods`{{execute}}

After a minute, you should see something like:
![New Relic pod running](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/infrapod.png?raw=true "New Relic pod running")