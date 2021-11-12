## 1. Create an administration account for Operation team in Mysql Databaes
Create a new terminal.

[photo]

Use below command to enter the `mysql` container.
docker exec -it mysql bash




mysql -u root -p
CREATE USER 'operation_team' IDENTIFIED BY '12345';
show grants for 'operation_team';
GRANT ALL ON wordpress TO 'operation_team'@'%';
GRANT ALL PRIVILEGES on * . * TO 'operation_team';

show databases;
use wordpress;
show full tables;
select * from wp_users;
select * from wp_wc_order_stats;
