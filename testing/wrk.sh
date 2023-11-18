#!/bin/bash
server_ip=$TARGET_SERVER

wrk -t12 -c400 -d2m $TARGET_SERVER:9090