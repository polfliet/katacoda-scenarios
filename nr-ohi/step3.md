## Validate that MySQL data is being received by New Relic

- Go to one.newrelic.com and click on the __Chart Builder__.

- Click on __Advanced (NRQL)__

- Do a query on MysqlSample:
  `SELECT * FROM MysqlSample limit 10`

  You should see MySQL performance metrics similar to the screenshot below.  If you don't, then see our troubleshooting documentation here [docs.newrelic.com](https://docs.newrelic.com/docs/infrastructure/new-relic-infrastructure/troubleshooting/no-data-appears-infrastructure)

![alt text](https://github.com/polfliet/katacoda-scenarios/blob/master/nr-ohi/screenshots/mysql-sample.png?raw=true "Example MySQL Metrics")
