#!/bin/bash

docker ps | grep -c "wordpress"
[$? -eq 0] && echo "done"    

