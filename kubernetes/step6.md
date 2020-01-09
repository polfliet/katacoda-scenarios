
The New Relic Prometheus OpenMetrics integration allows us to scrape any endpoint in our cluster.

### Install the New Relic Prometheus OpenMetrics integration
The yaml file is already on the machine.
`kubectl apply -f nri-prometheus-latest.yaml`{{execute}}

Confirm that the deployment has been created:
`kubectl get deployments nri-prometheus`{{execute}}

You should see something like:
![Prometheus integration](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/prometheus.png?raw=true "Prometheus integration")