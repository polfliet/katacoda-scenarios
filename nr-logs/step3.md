Configure the Fluentd plugin to add your New Relic License Key, by adding the following:

Modify td-agent.conf
`vi /etc/td-agent/td-agent.conf`{{execute}}

For this demo, we are going to change all the permissions as an example, never do this in production, this is just an example.
`sudo chmod -R 777 /var/log`{{execute}}

Press "i" for insert and then paste the following, changing your <new_relic_license_key> to your New Relic license key (see below).

```
<source>
  @type tail
  <parse>
    @type none
  </parse>
  path /var/log/*
  tag sample.tag
</source>

<filter sample.tag>
  @type record_transformer
  <record>
    service_name ${tag}
    hostname "#{Socket.gethostname}"
  </record>
</filter>

<match **>
  @type newrelic
  license_key <new_relic_license_key>
</match>
```

Your New Relic License key can be found in "account settings"
