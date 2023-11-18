<!-- # Project IT individual project
# Author: Mark Westerweel -->

# keysentry

a detection and notifier PoC for Digital Ocean (school assignment)

## Getting Started

### Prerequisites

You need to have the following installed:

## nice to have

- knowledge of linux
- knowledge of Digital Ocean Droplets
- knowledge of Prometheus and PromQL

## Prometheus

Set rules for Prometheus in the prometheus.yml file. This file is located in the root of the project. Preferably do this in a seperate file and include it in the prometheus.yml file under the rule fiels section. There are comments on how to do this in the config file.

```bash
rule_files: 
  - /PATHTOYOUR RULES/RULESNAME.YML
```

There's an example in the [Configuration](./Configuration/) folder.

Start Prometheus:

```bash
prometheus --config.file=/PATHTO/PROMETHEUS.YML
``

It should now be running on localhost:9090
