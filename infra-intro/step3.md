Now that the Infrastructure agent is pushing data to the New Relic platform, and more specically New Relic Insights, let's take a look at what our modifications have done with the data.

Navigate to the New Relic UI, Insights and then the Data explorer. The first Event type we want to take a look at is `SystemSample`.

The `SystemSample` event contains data describing the current overall state of the entire server, including CPU, memory, disk, and network.

| agentName agentVersion coreCount displayName entityGuid entityId entityKey entityName environment fullHostname hostname instanceType | kernelVersion linuxDistribution location nr.entityType operatingSystem processorCount systemMemoryBytes team cpuIOWaitPercent cpuIdlePercent cpuPercent cpuStealPercent | cpuSystemPercent cpuUserPercent criticalViolationCount diskFreeBytes diskFreePercent diskReadUtilizationPercent diskReadsPerSecond diskTotalBytes diskUsedBytes diskUsedPercent diskUtilizationPercent diskWriteUtilizationPercent | diskWritesPerSecond loadAverageFifteenMinute loadAverageFiveMinute loadAverageOneMinute memoryFreeBytes memoryTotalBytes memoryUsedBytes swapFreeBytes swapTotalBytes swapUsedBytes timestamp warningViolationCount |
|----|----|----|----|

If you have a good eye you'll find our `environment`, `location`, and `team` custom_attributes that we added to New Relic infrastructure config file.

Imagine the agent installed on hundreds of hosts, we can now easily retrieve our resource usage depending on these parameters.

```sql
SELECT average(cpuPercent) FROM SystemSample FACET location
```

Next to `SystemSample` New Relic also has:

* `ProcessSample` event gathers detailed resource usage information from programs running on a single system
* `StorageSample` event represents a single storage device associated with a server.
* `NetworkSample` event captures the descriptive and state information for each network device associated with a server. It includes the device's interface and address information, as well as current usage data.
* `InfrastructureEvent` describes changes (deltas) that occur in a system's live state.

Each of these (except for the `InfrastructureEvent`) will contain the custom_attributes we've defined in our config file, allowing you to quick sort and group like we did with `SystemSample` data.

Next to the data in Insighs you also have the views in New Relic Infrastructure. Navigate to New Relic UI and select the Infrastructure tab. Make sure to check out the following pages:

* Hosts
* Network
* Storage
* Processes
* Inventory
* Events

For our last step in the tutorial we'll take a look on how you can debug the New Relic agent. To make it a challenge we will break something in your set-up and it will be your job to find out what the issue is, and fix it.
