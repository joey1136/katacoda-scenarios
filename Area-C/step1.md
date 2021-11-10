In order to create a grafana container, you have to run to above command:

`docker run --name grafana --network=root_default -p 3000:3000 -d grafana/grafana:latest`{{execute}}

It is a command to start a grafana image
--name grafana means that you name the container as "grafana"
--network=root_default means that you have to link the container into a network called "root_default"
-p 3000:3000 means that you can access the container in port 3000
grafana/grafana:latest is the docker image you have to use

After that, Please click tab Grafana in the terminal


In the Grafana page login as 
User: admin
Password: admin
![login_page](images/grafana_login_page.png)

After that the website will ask you to change the password.
Please change your password into a secure password to data breach.
![change_password](images/grafana_changePassword.png)

Congulations! you have successfully create you grafana container