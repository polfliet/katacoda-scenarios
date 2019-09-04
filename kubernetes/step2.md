### Install kube-state-metrics
Download kube-state-metrics
`curl -o kube-state-metrics-1.5.zip https://codeload.github.com/kubernetes/kube-state-metrics/zip/release-1.5 && unzip kube-state-metrics-1.5.zip`{{execute}}

Install kube-state-metrics in the cluster
`kubectl apply -f kube-state-metrics-release-1.5/kubernetes`{{execute}}

Confirm that kube-state-metrics is installed
`kubectl get pods --all-namespaces | grep kube-state-metrics`{{execute}}

![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/assets/ksm.png?raw=true "Kube-state-metrics")

### Install the New Relic Kubernetes integration
We are going to deploy a DaemonSet to the cluster.
This DaemonSet will ensure that we have the New Relic Kubernetes agent running on each node of our cluster
`kubectl create -f newrelic-infrastructure-k8s-latest.yaml`{{execute}}

Confirm the daemon set was created
`kubectl get daemonsets`{{execute}}

![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/assets/daemonset.png?raw=true "Daemon set")

Confirm that the agent is running
`kubectl get pods`{{execute}}

![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/assets/infrapod.png?raw=true "Agent")

### Install the New Relic metadata injection
`kubectl create -f k8s-metadata-injection-latest.yaml`{{execute}}

Confirm that the setup job is completed and the metadata injection is running:
`kubectl get pods`{{execute}}

![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/assets/metadata.png?raw=true "Metadata")

### More info
Please read more at [docs.newrelic.com](https://docs.newrelic.com/docs/integrations/kubernetes-integration/get-started/introduction-kubernetes-integration)