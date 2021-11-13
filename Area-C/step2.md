

In our first step, we will learn how to create a grafana container.

In order to create a grafana container.First, pull the grafana official docker iamge.

`docker pull grafana/grafana:latest`{{execute}}

`docker run --name grafana --network=wordpress-network -p 3000:3000 -d grafana/grafana:latest`{{execute}}

* `--name grafana` means that you name the container as "grafana"
* `--network=wordpress-network` means that you have to link the container into a network called "root_default"
* `-p 3000:3000` means that you can access the container in port 3000
* `grafana/grafana:latest` is the docker image you have to use

Check the `grafana/grafana` container is runnning.

`docker ps`{{execute}}

After that, Please click tab Grafana in the terminal

In the Grafana page login as 
User: `admin`
Password: `admin`

![login_page](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-C/images/step1/grafana_login_page.PNG?raw=true)

After that the website will ask you to change the password.
Please change your password into a secure password to prevent data breach.

![change_password](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-C/images/step1/grafana_changePassword.PNG?raw=true)

Congulations! you have successfully create you grafana container
