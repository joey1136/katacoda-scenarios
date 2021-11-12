# Explore how the different types of sensitive data/PII are stored in the WordPress and WooCommerce platform by backend database tables

There are various types of sensitive data that you may need to deal with in WordPress and WooCommerce. You can try to view the WordPress and WooCommerce table stored in a database.


Go to the root account terminal.

Change the database.

`use wordpress;`{{execute}}

Show all the tables inside the WordPress.

`show full tables;`{{execute}}

You can see all the WordPress and WooCommerce table..
Then, try to view the content of the table which contains some sensitive data.

`select * from wp_usermeta;`{{execute}}

In the `wp_usermeta` table, it will show different kind of data about the user in WordPress. such as name, billing detail and the value of some WordPress configuration setting.

`select * from wp_users;`{{execute}}

In the `wp_users` table, it will show the users information such as `user login name`, `user password` in the hash value and `user email`.

`select * from wp_woocommerce_sessions;`{{execute}}

In the `wp_woocommerce_sessions` table, it will show some woocommerce log, such as when the customer order the product, the log will save all of the billing detail of the customer.

`select * from wp_wc_customer_lookup;`{{execute}}

In the `wp_wc_customer_lookup` table, it will show the user information including user name, first name, last name , email and data of last active.

`select * from wp_wc_order_stats;`{{execute}}
