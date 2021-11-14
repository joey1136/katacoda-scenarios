

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

Check the `mysql/mysql-server` container is runnning.

`docker ps`{{execute}}

# Start up the WordPress container

First, pull the WordPress official docker iamge.

`docker pull wordpress`{{execute}}

After finishing the pull of Wordpress. Start the WordPress container.

`docker run -e WORDPRESS_DB_USER=wordpress -e WORDPRESS_DB_PASSWORD=12345 -e WORDPRESS_DB_HOST=mysql:3306 --name wordpress --network=wordpress-network -p 10080:80 -d wordpress`{{execute}}

The following the command/environment variables explanation:
- -d option: Container run in daemon mode/in the background
- WORDPRESS_DB_HOST=mysql:3306: Specify the hostname (mysql) and the port (3306) of the database server for wordpress to store the data.
- WORDPRESS_DB_USER: Set the mysql database user name.
- WORDPRESS_DB_PASSWORD: Set the mysql database password.
- –-name wordpress: Set the container's name.
- --network=wordpress-network: Connect the wordpress container to the specified docker network.
- -p 10080:80: Tells Docker to pass connections from your host's port 10080 to the containers internal port 80.
- wordpress: The name of the image to be run.

Check that the WordPress container is running.

`docker ps`{{execute}}
