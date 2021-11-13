# Prevention tools-Back up the database

The purpose of the backup is to create a copy of data that can be recovered in the event of a primary data failure. Primary data failures can be the result of hardware or software failure, data corruption, or a human-caused event, such as a malicious attack (virus or malware), or accidental deletion of data. Backup copies allow data to be restored from an earlier point in time to help the business recover from an unplanned event.

![backup](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/backup.jpg?raw=true)

Now,we use mysqldump to backup our database information.

Fetch the file used for back up.

`wget -c https://dev.mysql.com/get/mysql-apt-config_0.8.16-1_all.deb`{{execute}}

Run the command to update.

`sudo apt-get update`{{execute}}

Run the command to install mysql-server.

`sudo apt-get install mysql-server`{{execute}}

"Do you want to continue?",input "Y" in your command.

Back up mysql database and store the sql file in the current directory.

`mysqldump -u root -p mysql >./backup.sql`{{execute}}

Input the password with '12345'.

List all the files in the current directory.

`ls`{{execute}}

You can find the backup file.

View the content of backup file for database.

`cat backup.sql`{{execute}}

Also, you can back up specified table.Take table "user" as an example.

`mysqldump -u root -p mysql user >./table_backup.sql`{{execute}}

List all the files 

`ls`{{execute}}

View the content of backup file for table.

`cat table_backup.sql`{{execute}}

Now,you master how to backup data by using mysqldump!



