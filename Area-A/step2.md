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
