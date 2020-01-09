There are many moving parts in a Kubernetes cluster. New Relic's Kubernetes cluster explorer allows you to:
* Quickly see where your pods are running
* Understand resource consumption in the cluster (with relation to your resource requests & limits)
* Focus on problematic pods & nodes
* Easily filter on namespace, deployment, etc.
* Track dynamic behavior by seeing all events happening in the cluster
* Correlate pods with application performance
* Analyze logs coming from your containers

### Use the Kubernetes cluster explorer

Go to one.newrelic.com and click on the Kubernetes cluster explorer:

![Kubernetes Cluster Explorer](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/demo-cluster.gif?raw=true "Open the New Relic Kubernetes Cluster explorer")

You should see all our pods in the running state. Each hexagon represent a pod, click on it to get more details.

We can also easily filter in our cluster. For example, search for *coredns*, and click on the coredns pod to see its resource consumption, and log files (all in the same view!):

![Kubernetes Cluster Explorer](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/demo-poddetails.gif?raw=true "Check a pod in detail")

Inspect what's happening in the cluster by clicking on the *Events* tab, or by looking at the events for a specific pod.
![Kubernetes Cluster Explorer](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/demo-poddetails.gif?raw=true "Track Kubernetes events")

We can also check out the Prometheus metrics we are capturing, by using New Relic's Chart Builder:
![Prometheus metrics](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/demo-prometheus.gif?raw=true "Prometheus metrics")

And of course you can then create any dashboard or chart with those Prometheus metrics.

### More info
Documentation can be found here:
* [Kubernetes integration](https://docs.newrelic.com/docs/integrations/kubernetes-integration/installation/kubernetes-installation-configuration)
* [Kubernetes events integration](https://docs.newrelic.com/docs/integrations/kubernetes-integration/kubernetes-events/install-kubernetes-events-integration)
* [Correlation with APM](https://docs.newrelic.com/docs/integrations/kubernetes-integration/link-your-applications/link-your-applications-kubernetes)
* [Prometheus OpenMetrics integration](https://docs.newrelic.com/docs/integrations/prometheus-integrations/install-configure/install-update-or-uninstall-your-prometheus-openmetrics-integration)
* [New Relic FluentBit plugin](https://docs.newrelic.com/docs/logs/enable-logs/enable-logs/kubernetes-plugin-logs)

