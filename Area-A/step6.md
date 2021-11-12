# Create a WordPress administration account for Operation team in Mysql Databaes

## 1. Login as root to create account.
Create a new terminal.

[photo]

Use below command to enter the `mysql` container.

`docker exec -it mysql bash`{{execute}}

Login to the backend database as `root`.

`mysql -u root -p`{{execute}}

Enter the password as `12345`.

Check what permissions of the root account;

`show database`{{execute}}

`show grants`{{execute}}

You will find that the root account can enter different databases and grant all the privileges.

Create a database user by using below command. (Please make sure you login into the database as root account)

`CREATE USER 'operation_team' IDENTIFIED BY '12345';`{{execute}}

## 2. Login as operation_team account
Create another new terminal and login the database as `operation_team` by using below command.

`docker exec -it mysql bash`{{execute}}

`mysql -u operation_team -p`{{execute}}

Enter the password as `12345`.

Check what permissions of the operation_team account.

`show database`{{execute}}

`show grants`{{execute}}

You can see there is only one database that the account can access.
The result of show grants about `GRANT USAGE ON...`, that means there is no privileges of the account.

## 3. Grant privileges to the operation_team account
Switch back to the root account terminal.

Grant the wordpress administration privileges to the operation_team account by using below command.

`GRANT ALL ON wordpress.* TO 'operation_team'@'%';`{{execute}}


Then, you can switch back to the operation_team account terminal.

Check what permissions of the operation_team account again.

`show database`{{execute}}

`show grants`{{execute}}

You can find that a wordpress database has been added and the account granted all the privileges on wordpress.
