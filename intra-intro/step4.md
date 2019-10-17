
If you check the New Relic data you might notice that the agent you have installed stopped reporting. (It might take a few minutes before you see the gap in the data)

Your challenge now is to find and fix the issue. Check our documentation for some help: [Troubleshooting the infrastructure agent](https://docs.newrelic.com/docs/infrastructure/new-relic-infrastructure/troubleshooting/no-data-appears-infrastructure)

A good way to check if you're getting data again from the agents is to run `SELECT * FROM SystemSample WHERE hostname = 'app1-staging-eu'`. If you see events for the last couple of minutes, the agent is running.

Once you see data again in the New Relic UI, you are done. Well done!
