
### Install the New Relic Kubernetes integration
We are going to deploy a DaemonSet to the cluster.
This DaemonSet will ensure that we have the New Relic Kubernetes agent running on each node of our cluster
`kubectl create -f newrelic-infrastructure-k8s-latest.yaml`{{execute}}

Confirm the daemon set was created
`kubectl get daemonsets`{{execute}}

You should see something like:
![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/daemonset.png?raw=true "Daemon set")

Confirm that the agent is running
`kubectl get pods`{{execute}}

You should see something like:
![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/infrapod.png?raw=true "Agent")