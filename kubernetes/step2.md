## Install kube-state-metrics
kubectl apply -f kube-state-metrics-release-1.5/kubernetes

## Install the New Relic Kubernetes integration
kubectl create -f newrelic-infrastructure-k8s-latest.yaml