### See your Log Events in New Relic Logs

Exercise the td-agent service, to generate some traffic:
`sudo systemctl stop td-agent.service`{{execute}}
`sudo systemctl start td-agent.service`{{execute}}


Navigate to New Relic Logs and see your Log Events:

![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/nr-logs/screenshots/logs.gif?raw=true "New Relic Logs")

Be patient, there isn't a lot of traffic. You will see data in 1-5 minutes. If you still aren't seeing any logs, you can check the td-agent logs for errors.

`tail -f /var/log/td-agent/td-agent.log`{{execute}}

Thank you!
