#!/bin/bash

docker ps | grep -c "wordpress"
  
if [[ $? -eq 0 ]]
  then   
      echo "done"    
  fi
