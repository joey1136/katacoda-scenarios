# Prevention tools-Prevent XSS Vulnerability

What is XSS attack?
Cross-Site Scripting (XSS) attacks are a type of injection, in which malicious scripts are injected into otherwise benign and trusted websites. XSS attacks occur when an attacker uses a web application to send malicious code, generally in the form of a browser side script, to a different end user. Flaws that allow these attacks to succeed are quite widespread and occur anywhere a web application uses input from a user within the output it generates without validating or encoding it.

An attacker can use XSS to send a malicious script to an unsuspecting user. The end user’s browser has no way to know that the script should not be trusted, and will execute the script. Because it thinks the script came from a trusted source, the malicious script can access any cookies, session tokens, or other sensitive information retained by the browser and used with that site. These scripts can even rewrite the content of the HTML page.

![XSS_attack](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/xss_attack.PNG?raw=true)


Using "Prevent XSS Vulnerability" plugin in wordpress.

Same as the previous step, click "Add New" button in the "Plugin" panel and search the "Prevent XSS Vulnerability".

![XSS_plugin](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/xss_plugin.PNG?raw=true)

Click "Install Now" and activate.

We can see the plugin "Prevent XSS Vulnerability" in the plugin list.

![xss_plugin_list](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/xss_plugin_list.PNG?raw=true)

Click "setting".

![xss_setting](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/xss_setting.PNG?raw=true)

You can exclude the characters which you are using on your site.
