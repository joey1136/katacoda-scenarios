# Different types of external attack

1.Phishing 

Phishing is often used to steal user data. This happens when an attacker masquerades as a trusted entity to trick a victim into opening an email, instant message or text message. If the employee uses the company email, it is likely to cause the company information leakage and huge losses.

Usually,the victim is asked to click on the download link, as well as the immediate response to the request.

![phishing_email](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/phishing_email.png?raw=true)

The below picture shows the process of stealing sensitive data from the victim.

![phishing_process](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/phishing_attack.png?raw=true)


2.DDoS attacks

Distributed denial of Service (DDoS) attacks are malicious acts that overwhelm a target server or its surrounding infrastructure with massive Internet traffic to damage the target server, service or network traffic.DDoS attacks use multiple damaged computer systems as attack traffic sources to achieve attack effects. 

![DDOS](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/ddos.gif?raw=true)

DDoS attacks are carried out through a network of computers connected to the Internet. These networks consist of computers and other devices, such as IoT devices, that are infected with malware and can be remotely controlled by attackers. These individual devices are called robots (or zombies), and groups of robots are called botnets.

Once a botnet is established, an attacker can launch an attack by sending remote instructions to each robot. When a botnet targets a victim's server or network, each robot sends requests to the target's IP address, which can overwhelm the server or network and cause denial of service to normal traffic.

![DDOS_attack](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/DDOS_attack.png?raw=true)


3.SQL injection

SQL injection, also known as SQLI, is a common attack vector that uses malicious SQL code for backend database manipulation to access information that was not intended to be displayed. This information may include any number of items, including sensitive company data, user lists or private customer details.


![sql_injection](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/sql_injection.PNG?raw=true)

Let's look at a simple example:

![sql_injection_example](https://github.com/joey1136/katacoda-scenarios/blob/main/Area-B/images/sql_injection_example.png?raw=true)

- In this case,the attack use "or 1=1", since 1=1 is always true.SQL will ingnore whether the studentid exist or not.
- And then append ";--".In sql statement, ";" means the end of one sql statement,"--" represents the comments.
- It will treat the statement after "--" as comment and will not execute.
- Now,all the student information will be returned to the attacker.




