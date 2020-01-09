
The New Relic metadata injection allows us to correlate APM data with Kubernetes data.

### Install the New Relic metadata injection
`kubectl create -f k8s-metadata-injection-latest.yaml`{{execute}}

Confirm that the setup job is completed and the metadata injection is running:
`kubectl get pods`{{execute}}

You should see something like:
![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/metadata.png?raw=true "Metadata")