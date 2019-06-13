## Install kube-state-metrics
Download kube-state-metrics
`curl -o kube-state-metrics-1.5.zip https://codeload.github.com/kubernetes/kube-state-metrics/zip/release-1.5 && unzip kube-state-metrics-1.5.zip`{{execute}}

Install kube-state-metrics in the cluster
`kubectl apply -f kube-state-metrics-release-1.5/kubernetes`{{execute}}

## Install the New Relic Kubernetes integration
`kubectl create -f newrelic-infrastructure-k8s-latest.yaml`{{execute}}