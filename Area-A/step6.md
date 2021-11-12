## 1. Create a WordPress administration account for Operation team in Mysql Databaes
Create a new terminal.

[photo]

Use below command to enter the `mysql` container.
`docker exec -it mysql bash`{{execute}}

Login to the backend database as `root`.
`mysql -u root -p`{{execute}}

Enter the password as `12345`.

Check what permissions the root account;
`show database`{{execute}}
`show grants`{{execute}}

You will find that the root account can enter different databases and grant all the privileges.

Create a database user by using below command. (Please make sure you login into the database as root account)

`CREATE USER 'operation_team' IDENTIFIED BY '12345';`{{execute}}

Create another new terminal and login the database as `operation_team` by using below command.

`docker exec -it mysql bash`{{execute}}
`mysql -u operation_team -p`{{execute}}

Enter the password as `12345`.

After login as the `operation_team` account, You can check what permissions the account.
`show database`{{execute}}


`show grants`{{execute}}
You can see the result of `GRANT USAGE ON *.* TO `operation_team`@`%``, that means there is no privileges of the account.




show grants for 'operation_team';
GRANT ALL ON wordpress TO 'operation_team'@'%';
GRANT ALL PRIVILEGES on * . * TO 'operation_team';

show databases;
use wordpress;
show full tables;
select * from wp_users;
select * from wp_wc_order_stats;
