# Start up the MYSQL and WordPress container
We need to use MYSQL database for storing the data in WordPress.

Create a docker network for communication between MySQL and WordPress containers.

`docker network create wordpress-network`{{execute}}

We check the preinstalled image:
`docker images`{{execute}}

we can see the mysql image already installed.

then, Startup a new docker container mysql in the background.

`docker run --name mysql -d -e MYSQL_ROOT_PASSWORD=12345 -e MYSQL_DATABASE=wordpress -e MYSQL_USER=wordpress -e MYSQL_PASSWORD=12345 --network=wordpress-network mysql:8`{{execute}}

The following the command/environment variables explanation:
- -d option: Container run in the background.
- MYSQL_DATABASE: Database name.
- --name specifies the name for the created container called "mysql".
- -e MYSQL_ROOT_PASSWORD="12345" defines the environment variable which specifies initial root user password to be "12345".
- mysql:8:docker image name asnd version.

Check whether the `mysql` container is runnning or not.

`docker ps`{{execute}}

![ps_result1](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/container_ps1.PNG?raw=true)


For wordpress container,first we pull the WordPress docker iamge because the image has not pulled before.

`docker pull wordpress`{{execute}}

After finishing the pull of Wordpress. Start the WordPress container.

`docker run -e WORDPRESS_DB_USER=wordpress -e WORDPRESS_DB_PASSWORD=12345 -e WORDPRESS_DB_HOST=mysql:3306 --name wordpress --network=wordpress-network -p 10080:80 -d wordpress`{{execute}}

The following the command/environment variables explanation:
- -d option: Container run in the background.
- –-name wordpress: Set the container's name.
- WORDPRESS_DB_HOST=mysql:3306: Specify the hostname (mysql) and the port (3306) of the database server for wordpress to store the data.
- WORDPRESS_DB_USER: Set the mysql database user name.
- WORDPRESS_DB_PASSWORD: Set the mysql database password.
- --network=wordpress-network: Connect the wordpress container to the specified docker network.
- -p 10080:80: Tells Docker to pass connections from your host's port 10080 to the containers internal port 80.
- wordpress: The name of the image.

Check whether the "wordpress" container is running or not.

`docker ps`{{execute}}

![ps_result2](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/container_ps2.PNG?raw=true)



