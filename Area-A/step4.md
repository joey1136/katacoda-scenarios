# Learn how to operate the WooCommerce

## 1.Add a new product
Click the `Product` link in the left nav of your site's dashboard and then click `Create Product` button.

![add_product1](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/20.jpg?raw=true)
![add_product2](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/21.jpg?raw=true)

You can design the product whatever you want. 
In this senarios, your only need to enter the `Product name`, `Regular price`, and `Product image`.

![add_product3](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/27.jpg?raw=true)
![add_product4](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/28.jpg?raw=true)

Click `Publish` button to publish the product.

![add_product5](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/24.jpg?raw=true)

The product will be shown in the shop of the website.

![add_product6](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/29.jpg?raw=true)

Exercise: Add more differnet of the product.

## 2.Set up the payment method
Click the `WooCommerce` link in the left nav of your site's dashboard and then click `setting`.

![payment_method1](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/31.jpg?raw=true)

Click the `Payments` to set up the payment methods.
To make it easier for you to experience the ordering procedure, enable the `Cash on delivery` payment method.

![payment_method2](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/33.jpg?raw=true)

## 3.Add a user in the WordPress
Click the `User` link in the left nav of your site's dashboard, and then click `Add New` button.

![add_user1](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/34.jpg?raw=true)
![add_user2](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/35.jpg?raw=true)

Enter the user informatio. In order to experience the customer ordering procedure, select the `Customer` Role, and then click `Add New User` button to create a user account.

![add_user3](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/36.jpg?raw=true)

## 4.Experience the customer ordering procedure
Open a new Incognito Tab and enter `2886795290-10080-simba09b.environments.katacoda.com`, you should visit to your WordPress site.

![customer_user1](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/38.jpg?raw=true)

Login as a customer account that you created.

![customer_user2](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/39.jpg?raw=true)

Go to the shop and add the product to the cart.

![customer_user3](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/40.jpg?raw=true)

View the cart and than click `proceed to checkout` button.

![customer_user4](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/41.jpg?raw=true)

Enter the information of the billing order, and then click `Place order` button.

![customer_user5](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/42.jpg?raw=true)

Your order will be successfully received.

![customer_user6](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/43.jpg?raw=true)

Go back to the WordPress site that is login with an administration account, you will see there is a new order and you can view the order information.

![customer_user7](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/44.jpg?raw=true)
![customer_user8](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/46.jpg?raw=true)



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
