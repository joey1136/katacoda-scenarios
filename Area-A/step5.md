# Learn how to manage the user account for different team in WordPress

## 1. Create a account for Operation team
Click the `Users` link in the left nav of your site's dashboard and then click `Add New` button.

![add_user1](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/54.jpg?raw=true)

Enter the username as `operation_team`, email as `operation_team@hotmail.com`, and password as `123456`.
Reminder: The weak password is for the demonstration, you should enter a strong password when you actually design a public Wordpress.
Because the Operation team have to maintain the production WordPress and WooCommerce platform, they need to grant all the permission in WordPress and WooCommerce. Therefore, the the user roles should be selected as `Administrator`.
Click `Add New User` button

![add_user2](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/55.jpg?raw=true)


## 1.Design a role
You can use a Wordpress plugin called `Members – Membership & User Role Editor` to design a role for the user.
Install the plugin and activate it.

![Role1](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/47.jpg?raw=true)

Click the `Members` link in the left nav of your site's dashboard and then click `Add New` button.

![Role2](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/49.jpg?raw=true)

You can design a role for Software development team and Sales and Marketing team.

Software development team is responsible for developing and maintaining the various wordpress customization, custom developed wordpress plugins, and a mobile application with integration of the WordPress and WooCommerce.

Name the role as `Software development team`.
Then, you can grant the following privilege to the Software development team.
- Pages: Design a website page
- Appearance: For WordPress customization
- Plugins: Develop wordpress plugins

![Role3](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/64.jpg?raw=true)
![Role4](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/56.jpg?raw=true)
![Role5](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/57.jpg?raw=true)

After finish the grant selection, click `Add Role` button.

![Role6](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/65.jpg?raw=true)

You can also grant the read privilege only for the Software development team, so that they can view the data of Wordpress or WooCommerce without edit permissions.

![Role7](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/58.jpg?raw=true)

Sales and marketing team is responsible for customer support, maintaining product/pricing data and creating the marketing/promotion campaigns in the WordPress and WooCommerce platform.

Name the role as `Sales and Marketing team`.
Then, you can grant the following privilege to the Software development team.
- Posts & Coupons: For creating the marketing/promotion campaigns
- Product & Taxonomies: For managing the WooCommerce product
- Order: For managing the WooCommerce order

![Role8](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/60.jpg?raw=true)
![Role9](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/61.jpg?raw=true)
![Role10](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/62.jpg?raw=true)
![Role11](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/63.jpg?raw=true)
![Role12](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-A/images/59.jpg?raw=true)

After finish the grant selection, click `Add Role` button.

## 3. Create a account for Software development team and Sales and Marketing team.

For Software development team: Enter the username as `software_development_team`, email as `software_development_team@hotmail.com`, and password as `123456`.
Choose the user roles as `Software development team`

For Sales and Marketing team: Enter the username as `sales_and_marketing_team`, email as `sales_and_marketing_team@hotmail.com`, and password as `123456`.
Choose the user roles as `Sales and Marketing team`

## Exercise: Login as `Software development team` and `Sales and Marketing team` to experience the permissions in WordPress

