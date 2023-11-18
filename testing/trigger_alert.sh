#!/bin/bash
server_ip=$TARGET_SERVER


for ((i=1;i<=1000;i++)); do
  curl http://$server_ip
  # Optional: add a sleep command here if needed
done

