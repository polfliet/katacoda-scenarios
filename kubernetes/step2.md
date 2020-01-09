
During this step we will install kube-state-metrics, a service that exposes metrics about the various Kubernetes objects.

### Install kube-state-metrics
Download kube-state-metrics
`curl -L -o kube-state-metrics-1.7.2.zip https://github.com/kubernetes/kube-state-metrics/archive/v1.7.2.zip && unzip kube-state-metrics-1.7.2.zip`{{execute}}

Install kube-state-metrics in the cluster
`kubectl apply -f kube-state-metrics-1.7.2/kubernetes`{{execute}}

Confirm that kube-state-metrics is installed
`kubectl get pods --all-namespaces | grep kube-state-metrics`{{execute}}

After a minute, you should see something like:
![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/ksm.png?raw=true "Kube-state-metrics")