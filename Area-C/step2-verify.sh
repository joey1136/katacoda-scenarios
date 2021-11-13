#!/bin/bash

docker exec -it mysql cat etc/my.cnf | grep -c "[mysqld]
general_log = 1
log_output = table"

if [[ $? -eq 0 ]]
  then 
    echo "done"
  fi