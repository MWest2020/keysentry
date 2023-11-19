<!-- # Project IT individual project
# Author: Mark Westerweel -->

# KeySentry

A detection and notifier Proof of Concept (PoC) for Digital Ocean environments.

## Getting Started

### Prerequisites

- Digital Ocean Droplet or similar cloud environment.
- Prometheus for monitoring and alerting.
- Alertmanager for alert management.
- Basic knowledge of Linux, Digital Ocean Droplets, Prometheus, and PromQL.

## Installation and Configuration

### Digital Ocean Setup

1. **Create a Droplet**: Set up a Digital Ocean Droplet with an appropriate OS (Ubuntu recommended).
2. **Environment Preparation**: Ensure necessary security measures like firewalls and user access control are in place.

### Prometheus

1. **Installation**: Install Prometheus on the Droplet. Refer to the [Prometheus Installation Guide](https://prometheus.io/docs/prometheus/latest/installation/).
2. **Configuration**: Configure Prometheus for monitoring. Focus on metrics like HTTP requests, system resources, and response times.

   Example `prometheus.yml` configuration snippet:
   ```yaml
   global:
     scrape_interval: 15s
     ...

   scrape_configs:
     - job_name: 'your_job'
       static_configs:
         - targets: ['localhost:9090']
     ...

####

Rule Files: Create a separate YML file for alerting rules and include it in `prometheus.yml` under `rule_files`.

Example:

```
rule_files: 
  - "/path/to/your/rules.yml"
```
You can look up the official documentation for the default configuration. You don't need to alter anything, besides the global scraping settings. The default is 1h. For this project, it's set to 5 minutes.

Start Prometheus: Run Prometheus with the configuration file.

```
prometheus --config.file=/path/to/prometheus.yml
```
#### Alertmanager
Installation and Configuration: Install Alertmanager and configure it to work with Prometheus. Set up routes and receivers for notifications, like email.

You can download Alert Manager at the official Prometheus' [download page](https://prometheus.io/download/) 

for this setup:

```
wget https://github.com/prometheus/alertmanager/releases/download/v0.26.0/alertmanager-0.26.0.linux-amd64.tar.gz
tar -xvfz alertmanager-0.26.0.linux-amd64.tar.gz
```
and head into the directory and run it:

```
cd alertmanager-0.26.0.linux-amd64.tar.gz
./alertmanager
```

>*Note:* Remember to keep Alert Manager running. It won't alert otherwise. We suggest you make it a daemon. 
 


#### Testing and Alerts

Scripted Traffic Generation: Use the scripts or Apache JMeter to simulate traffic and trigger alerts.
GitHub Workflows: Implement GitHub Actions for automated testing and alert verification. All workflows are set to manually trigger (besides Jmeter), but can be easily set with

`on:
  schedule:
    - cron: '0 5 * * *'  # Runs daily at 5 AM UTC`
in the workflow yaml.


Alert Verification: Check alert configuration and notification through Prometheus's web UI and notification channels. You can read more in the official documentation (or the prometheus yaml file. The defaults will tell you where to look for the GUI's in the browser. 

