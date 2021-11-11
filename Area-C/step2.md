# 1. Configuration on grafana

In order to get data from database, we have to setup datasource in grafana webpage.

Please first select datasource in the main page.

![datasource_1](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-C/images/main_addDatasource.png?raw=true)

After that search mysql and select it as new datasource.

![datasource_2](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-C/images/datasource_sql.PNG?raw=true)

Please enter the following configuration into the setup.

* Host - mysql container name (e.g. mysql-server)
* Database - database name (e.g. mysql / wordpress)
* User - your admin user account 
Note: please enter a user account which have permission on select data from the sepcified database
* Password - your admin user password
* Others - you may also enter other configuration 

You should click Save & test and check whether Database Conection OK

![datasource_3](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-C/images/datasource_detail.PNG?raw=true)


You should make new datasource from mysql if the database is different
In the following Steps, we also need to use datasource from wordpress database.
You make skip this configuration first but you have to remember to create the datasource for wordpress database.



# 2. Configuration on mysql

In order to enable the general_log in mysql database, you have to follow the following command.

Go to terminal:

Start your mysql container by :

`docker exec -it mysql bash`{{execute}}

After that, you have to add the following configuration in the my.cnf file in folder etc/mysql by few commands:

`cat -> etc/my.cnf`{{execute}}

`[mysqld]
general_log = 1
log_output = table`{{execute}}


after that please click ctrl + D in your keyboard to stop editing the my.cnf file.

After that restart the container and check whether the log has succesfull enabled
`exit`{{execute}}

`docker restart mysql`{{execute}}

`docker exec -it mysql bash`{{execute}}

Also, login to the mysql database with a admin account
`mysql -u {your mysql username} -p`

`{your password}`

Check that whether general_log is enabled.
`SHOW global variables like 'log%';`{{execute}}

