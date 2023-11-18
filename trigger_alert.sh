#!/bin/bash

for i in {1..1000}
do 
  curl ${{secrets.TARGET_SERVER}}
  echo "Request $i sent"
  sleep 0.25
  
done
