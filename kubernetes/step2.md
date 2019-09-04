## Install kube-state-metrics
Download kube-state-metrics
`curl -o kube-state-metrics-1.5.zip https://codeload.github.com/kubernetes/kube-state-metrics/zip/release-1.5 && unzip kube-state-metrics-1.5.zip`{{execute}}

Install kube-state-metrics in the cluster
`kubectl apply -f kube-state-metrics-release-1.5/kubernetes`{{execute}}

Confirm that kube-state-metrics is installed
`kubectl get pods --all-namespaces | grep kube-state-metrics`{{execute}}

## Install the New Relic Kubernetes integration
We are going to deploy a DaemonSet to the cluster.
This DaemonSet will ensure that we have the New Relic Kubernetes agent running on each node of our cluster
`kubectl create -f newrelic-infrastructure-k8s-latest.yaml`{{execute}}

Confirm the daemon set was created
`kubectl get daemonsets`{{execute}}

Confirm that the agent is running
`kubectl get pods`{{execute}}

## Install the New Relic metadata injection
`kubectl create -f k8s-metadata-injection-latest.yaml`{{execute}}

Confirm that the setup job is completed and the metadata injection is running:
`kubectl get pods`{{execute}}