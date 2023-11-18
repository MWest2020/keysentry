#!/bin/bash

for i in {1..1000}
do 
  curl http://188.166.74.81
  echo "Request $i sent"
  sleep 1
done
