# New Relic - Observability for Kubernetes 

During this tutorial, we will learn how to get full visibility into our Kubernetes cluster following New Relic's observability maturity model:

![Kubernetes maturity model](https://github.com/polfliet/katacoda-scenarios/blob/master/kubernetes/screenshots/maturitymodel.png?raw=true "Kubernetes maturity model")

We will go through the following steps:

## Preparation

* Create a **Kubernetes secret** that contains our New Relic license key

* Install **kube-state-metrics** for getting metrics about all Kubernetes objects

## Installation

* Install **New Relic Kubernetes integration** by deploying a DaemonSet

* Track important **Kubernetes events** with the **New Relic Kubernetes events integration**

* Install the **New Relic metadata injection** to correlate application performance data with Kubernetes data

* Install the New Relic **Prometheus** integration to get any Prometheus data

* Capture **Kubernetes logs** from your pods with New Relic's FluentBit plugin

## Troubleshooting

* Troubleshoot with the **New Relic Kubernetes cluster explorer**
