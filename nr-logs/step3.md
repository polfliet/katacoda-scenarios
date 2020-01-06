### Update Your New Relic license key
Retrieve your New Relic license key by logging in to your New Relic account, and clicking on Account Settings:
![alt text](https://raw.githubusercontent.com/polfliet/katacoda-scenarios/master/nr-logs/screenshots/nrlicense.gif?raw=true "License key")

## Create Your FluentD Config File
`sudo wget "https://raw.githubusercontent.com/polfliet/katacoda-scenarios/master/nr-logs/assets/td-agent.conf?raw=true" -O /etc/td-agent/td-agent.conf`{{execute}}

## Modify Your License Key
Add your license key below by replacing <new_relic_license_key> with your New Relic license key
`sudo sed -i 's/<new_relic_license_key>/replacemewithyourkey/g' /etc/td-agent/td-agent.conf`{{copy}}

## Permissions
Once you have added your license key and sample configuration we will need to modify the permissions on our log files. For this demo, we are going to change all the permissions as an example, never do this in production, this is just an example.
`sudo chmod -R 777 /var/log`{{execute}}
