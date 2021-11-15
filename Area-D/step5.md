The right to data portability gives individuals the right to receive personal data they have provided to a controller in a structured, commonly used and machine readable format. It also gives them the right to request that a controller transmits this data directly to another controller.

The data subject shall have the right to receive the personal data concerning him or her, which he or she has provided to a controller, in a structured, commonly used and machine-readable format and have the right to transmit those data to another controller without hindrance from the controller to which the personal data have been provided.

## Exporting Personal Data through dashboard
Navigate to `Tools > Export Personal Data`.

![Confirm_Identity](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-D/images/step1/ConfirmIdentity.png?raw=true)

To send the request, type their email address in the box provided and hit “Send Request.”  They’ll receive an email with a confirmation link, which they’ll use to confirm the request. While you’re waiting for the customer to confirm, you’ll see the request displayed as “Pending.” Once they click the link, the status switches to “Confirmed”. The right of access is then granted to the person.

## Plugin Installation to Export Personal Data

Navigate to `Plugins`, click on [add new] button and search for "WP phpMyAdmin". Then click on [Install Now] button, wait for installation. Once it’s completed click on [Activate] button.

![php1](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-D/images/step5/php1.png?raw=true)

After installation and activation, `WP phpMyAdmin` menu will appear on Dashboard left sidebar. As the wordpress is run on katacoda, the ip address do not match. Untick the "Restrict access only to current IP" option and save. Click the [Enter phpMyAdmin] to enter the system.

![php2](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-D/images/step5/php2.png?raw=true)

In the system, click the [SQL] button to enter the console. Enter the following queries: ``use wordpress;select * from `wp_users`;``. Click the [Go] button to execute the queries.

![php3](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-D/images/step5/php3.png?raw=true)

The personal data of the users is showed. You may click the [Export] button to export the result.

![php4](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-D/images/step5/php4.png?raw=true)

Choose the export file format in the pull down. Click the [Go] button to download the result.

![php5](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-D/images/step5/php5.png?raw=true)
