### Install the New Relic metadata injection
`kubectl create -f k8s-metadata-injection-latest.yaml`{{execute}}

Confirm that the setup job is completed and the metadata injection is running:
`kubectl get pods`{{execute}}

You should see something like:
![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/assets/metadata.png?raw=true "Metadata")

### More info
More info about the Kubernetes integration, metadata injection, etc. can be found at [docs.newrelic.com](https://docs.newrelic.com/docs/integrations/kubernetes-integration/get-started/introduction-kubernetes-integration)