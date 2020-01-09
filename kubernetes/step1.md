
We will create a Kubernetes secret that contains our New Relic License key. (Kubernetes secrets are used to store sensitive information such as passwords and license keys in a Kubernetes cluster – we can set this once and then re-use it in all our New Relic configurations.)

### Get your New Relic license key
Retrieve your New Relic license key by logging in to your New Relic account, and clicking on Account Settings:

![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/nrlicense.gif?raw=true "License key")

### Create the Kubernetes secret
Create the Kubernetes secret by copying the following line and **put your license key between the quotes** before pressing enter.

`kubectl create secret generic newrelic-secret --from-literal=new_relic_license_key='<YOUR_NEW_RELIC_LICENSE_KEY>'`{{copy}}

You should see something like:
![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/secret.png?raw=true "Secret")

The yaml files in the rest of this tutorial will refer to this newrelic-secret
