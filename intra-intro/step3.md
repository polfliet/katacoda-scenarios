Now that the Infrastructure agent is pushing data to the New Relic platform, and more specically New Relic Insights, let's take a look at what our modifications have done with the data.

Navigate to the New Relic UI, Insights and then the Data explorer. The first Event type we want to take a look at is `SystemSample`.

| agentName agentVersion coreCount displayName entityGuid entityId entityKey entityName environment fullHostname hostname instanceType | kernelVersion linuxDistribution location nr.entityType operatingSystem processorCount systemMemoryBytes team cpuIOWaitPercent cpuIdlePercent cpuPercent cpuStealPercent | cpuSystemPercent cpuUserPercent criticalViolationCount diskFreeBytes diskFreePercent diskReadUtilizationPercent diskReadsPerSecond diskTotalBytes diskUsedBytes diskUsedPercent diskUtilizationPercent diskWriteUtilizationPercent | diskWritesPerSecond loadAverageFifteenMinute loadAverageFiveMinute loadAverageOneMinute memoryFreeBytes memoryTotalBytes memoryUsedBytes swapFreeBytes swapTotalBytes swapUsedBytes timestamp warningViolationCount |
|----|----|----|----|

If you have a good eye you'll find our `environment`, `location`, and `team` custom_attributes that we added to New Relic infrastructure config file.

Imagine the agent installed on hundreds of hosts, we can now easily retrieve our resource usage depending on these parameters.

```sql
SELECT average(cpuPercent) FROM SystemSample FACET location
```


