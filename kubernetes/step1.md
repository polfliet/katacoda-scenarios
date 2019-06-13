

## Inject our New Relic license key

Create a Kubernetes secret that contains our New Relic License key. (Kubernetes secrets are used to store sensitive information such as passwords and license keys in a Kubernetes cluster – we can set this once and then re-use it in all our New Relic configurations.) Copy the following line (replacing your license key between the quotes). 

`kubectl create secret generic newrelic-secret --from-literal=new_relic_license_key='<YOUR_NEW_RELIC_LICENSE_KEY>'`{{copy}}
