# Prevention tools-Least privilege priciple

Least privilege priciple

Least privilege access helps protect and secure privileged credentials, data and assets by limiting user access from within the network. So, the priciple could reduces their risk of gaining access to a privileged account if an attacker accesses IT environment, therefore reducing the risk of data breach.

WordPress has six pre-defined roles: Super Admin, Administrator, Editor, Author, Contributor and Subscriber. Each role is allowed to perform a set of tasks.

- Super Admin:somebody with access to the site network administration features and all other features. 
- Administrator:somebody who has access to all the administration features within a single site.
- Editor:somebody who can publish and manage posts including the posts of other users.
- Author:somebody who can publish and manage their own posts.
- Contributor:somebody who can write and manage their own posts but cannot publish them.
- Subscriber:somebody who can only manage their profile.

Click the "Wordpress" button in the terminal bar and visit the webpage,choose the language you prefer and create your account.Then,sign in with your account.
![wordpress_login](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/wordpress_login.PNG?raw=true)

After sign in, click the user and you can see the users in the wordpress database.

![wordpress_users](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/Users.PNG?raw=true)

Now,you can only see one user in the list and this is yourself.Your role is an Administrator.You can click "Add New" to add users and set their roles for differnent requirements.Remember that the role only need to fulfill the minimum request.

![add_user](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/add_user.png?raw=true)

Now,we have 2 users and you can see the jason with the role of subscriber.

![jason](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/user_jason.PNG?raw=true)

In the terminal,start the bash shell.

`docker exec -it mysql bash`{{execute}}

Start the mysql client inside the container you have started.

`mysql -u root -p`{{execute}}

Use the password 12345 to login.

Change the database to wordpress.

`use wordpress;`{{execute}}

Check the user list,you can find the subscriber "jason".

`select * from wp_users;`{{execute}}

Exit mysql connection.
`exit;`{{execute}}

Exit shell.
`exit;`{{execute}}








