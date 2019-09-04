

## Inject your New Relic license key

We will create a Kubernetes secret that contains our New Relic License key. (Kubernetes secrets are used to store sensitive information such as passwords and license keys in a Kubernetes cluster – we can set this once and then re-use it in all our New Relic configurations.)

* First, get your New Relic license key by logging in to your New Relic account, and clicking on Account Settings:

![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/assets/license.png?raw=true "License key")

* Create the Kubernetes secret by copying the following line and **put your license key between the quotes** before pressing enter.

`kubectl create secret generic newrelic-secret --from-literal=new_relic_license_key='<YOUR_NEW_RELIC_LICENSE_KEY>'`{{copy}}


