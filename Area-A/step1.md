# Start up the MYSQL Container

First, we should start up a MYSQL database for storing the data in WordPress. We will make use of the official docker image `mysql:8` in the Docker hub.

Create a docker network for communication between MySQL and WordPress containers.

`docker network create wordpress-network`{{execute}}

Startup a container mysql in the background.

`docker run --name mysql -d -e MYSQL_ROOT_PASSWORD=12345 -e MYSQL_DATABASE=wordpress -e MYSQL_USER=wordpress -e MYSQL_PASSWORD=12345 --network=wordpress-network mysql:8`{{execute}}

The following the command/environment variables explanation:
- -d option: Container run in daemon mode/in the background
- MYSQL_ROOT_PASSWORD: Initialize the root's password in the MySQL database.
- MYSQL_DATABASE: Create a database with the specified name.
- MYSQL_USER and MYSQL_PASSWORD: Create a user with the specified password. This user will be granted the superuser permissions for the database specified by the MYSQL_DATABASE variable.

Check the mysql container is runnning.

`docker ps`{{execute}}


