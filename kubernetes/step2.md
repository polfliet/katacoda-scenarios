
### Install kube-state-metrics
Download kube-state-metrics
`curl -o kube-state-metrics-1.5.zip https://codeload.github.com/kubernetes/kube-state-metrics/zip/release-1.5 && unzip kube-state-metrics-1.5.zip`{{execute}}

Install kube-state-metrics in the cluster
`kubectl apply -f kube-state-metrics-release-1.5/kubernetes`{{execute}}

Confirm that kube-state-metrics is installed
`kubectl get pods --all-namespaces | grep kube-state-metrics`{{execute}}

You should see something like:
![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/ksm.png?raw=true "Kube-state-metrics")