
During this step we will deploy the New Relic Kubernetes events integration to our cluster.

### Install the New Relic Kubernetes events integration
The New Relic Kubernetes events integration watches for events happening in our Kubernetes cluster.

The yaml file is already available on our machine, we can apply it:
`kubectl apply -f nri-kube-events-0.0.2.yaml`{{execute}}

Confirm the Pod is running
`kubectl get pods`{{execute}}

You should see something like:
![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/eventpod.png?raw=true "Event pod")
