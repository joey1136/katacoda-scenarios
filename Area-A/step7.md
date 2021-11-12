# Explore how the different types of sensitive data/PII are stored in the WordPress and WooCommerce platform by backend database tables

There are various types of sensitive data that you may need to deal with in WordPress and WooCommerce. You can try to view the WordPress and WooCommerce table stored in a database.


Go to the root account terminal.

See 
show databases;
use wordpress;

Show all the tables inside the WordPress
`show full tables;`


select * from wp_usermeta;
select * from wp_users;


select * from wp_woocommerce_order_itemmeta;
select * from wp_wc_customer_lookup;
select * from wp_wc_order_stats;
select * from wp_woocommerce_sessions;
