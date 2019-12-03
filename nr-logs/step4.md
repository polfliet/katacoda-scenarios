Send some Log files into New Relic
Modify td-agent.conf
`nano /etc/td-agent/td-agent.conf`{{execute}}

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
  </record>
</filter>

<match **>
  @type newrelic
  api_key <new_relic_license_key>
</match>
```

Please add your license key in <new_relic_license_key>, which can be found in "account settings"
