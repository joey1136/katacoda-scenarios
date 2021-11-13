#!/bin/bash

docker network ls | grep -c "wordpress-network"

if [[ $? -eq 0 ]]
  then 
    echo "done"
  fi

