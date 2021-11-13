[docker network ls | grep -c "wordpress-network" ] && [docker ps | grep -c "mysql"] && [docker images | grep -c "wordpress"] && [docker ps | grep -c "wordpress"]  && echo "done"

