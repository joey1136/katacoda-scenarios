# Learn how to operate the WooCommerce

## 1.Add a new product
Click the `Product` link in the left nav of your site's dashboard and then click `Create Product` button.

![add_product1](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/20.jpg?raw=true)
![add_product2](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/21.jpg?raw=true)

You can design the product whatever you want. 
In this senarios, your only need to enter the `Product name`, `Regular price`, and `Product image`.

![add_product3](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/27.jpg?raw=true)

Click `Publish` button to publish the product.

![add_product4](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/28.jpg?raw=true)

The product will be shown in the shop of the website.

![add_product5](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/29.jpg?raw=true)

Exercise: Add more differnet of the product.

## 2.Set up the payment method
Click the `WooCommerce` link in the left nav of your site's dashboard and then click `setting`.

![payment_method1](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/31.jpg?raw=true)

Click the `Payments` to set up the payment methods.
To make it easier for you to experience the ordering procedure, enable the `Cash on delivery` payment method.

![payment_method2](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/33.jpg?raw=true)



docker exec -it mysql bash
mysql -u root -p
CREATE USER 'operation_team' IDENTIFIED BY '12345';
GRANT ALL PRIVILEGES on * . * TO 'operation_team';
show grants for 'operation_team';
GRANT ALL ON wordpress TO 'operation_team'@'%';


show databases;
use wordpress;
show full tables;
select * from wp_users;
select * from wp_wc_order_stats;
