# JMeter Load Test Plan

## Overview

This repository contains a JMeter test plan designed to simulate a significant increase in traffic to a specific server, particularly targeting scenarios like unexpected traffic spikes. The primary use case is to test the server's response and robustness under heavy load conditions, which could be indicative of real-world events such as a sudden surge in user activity or a potential security breach.

## Test Plan Description

The JMeter test plan (`testplan.jmx`) is configured to create a large number of requests to the target server, simulating numerous users,  or an attack, accessing the server simultaneously. This plan is particularly focused on simulating traffic at an unusual time (5 AM), which can be critical for identifying vulnerabilities or inefficiencies in server configurations and monitoring systems.

## Execution via GitHub Actions

The test is automated using GitHub Actions, a CI/CD platform that allows us to schedule and run the test plan at a specific time (5 AM UTC) without manual intervention.

### Workflow Details

- **File**: `.github/workflows/jmeter-test.yml`
- **Scheduled Time**: 5 AM UTC daily (or any given time).
- **Actions**:
  1. The workflow checks out the repository containing the JMeter test plan.
  2. It then sets up a Java environment, which is necessary to run JMeter.
  3. Finally, it executes the JMeter test using the provided test plan.

### Viewing Test Results

After each test execution, the results are saved in a file (`results.jtl`). These results can be used to analyze the server's performance under load and identify potential areas for improvement or necessary actions in case of anomalies.

## How to Contribute

To contribute to this project:

1. Fork the repository.
2. Create a new branch for your feature or fix.
3. Make your changes.
4. Submit a pull request with a detailed description of your changes.

## Feedback and Issues

If you encounter any issues or have suggestions for improving the test plan or the automation process, please open an issue in this repository.
