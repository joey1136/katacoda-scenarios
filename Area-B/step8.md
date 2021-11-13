# Prevention tools-Salt Shaker

A SALT key is a cryptographic element that hashes both passwords and cookies to keep them secure in WordPress. In other words, this prevents hackers from seeing your passwords in plaintext if they gain access to your database.

click "Add New" button in the "Plugin" panel and search "Salt Shaker".

![salt](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/salt.PNG?raw=true)

Click "Install Now" and then click "Activate".

Click "Tools"->"Salt Shaker".

![tool_salt](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/tool_salt.PNG?raw=true)

Check the box to automatically change the SALT keys. Use the drop-down box to select Daily, Weekly, Monthly, Quarterly, and Biannually as the frequency.Then,click "Change Now".

![salt_shaker_setting](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/salt_shaker_setting.PNG?raw=true)

Congratulations,you have successfully set up automatic SALT key replacements.Since this will log out all users every time it occurs,it is recommended not to have it happen too frequently.Otherwise,it can cause an inconvenience for your customers.