# mailfrom sendmail milter

#### This is a simple Sendmail milter, written in Python 2.7. Its goal is to prevent the authenticated virtual users from changing their e-mail when sending outgoing messages through SMTP. This code is a fork of https://github.com/crustymonkey/python-libmilter
#### License: See LICENSE file
#### Author of the modification: Veselin Kolev <vesso.kolev@gmail.com>
#### Release: 2019091700

#### Resume:

##### The python-libmilter was modified in attempt to prevent the SMTP users from spooing their e-mail addresses, i.e. from sending e-mail messages, that: 

1. contain deliberately modified e-mail address in the "From" header

2. have their returned-path modified

3. have no "From" header

### Installation:

Clone this code and merge the ``usr/`` folder with your system ``/usr``. Then follow the instructions given in ``README.create_user`` and ``README.sendmail.mc``. Finally, enable the mailfrom.server as systemd service:

```
systemctl enable mailfrom
```

and run it

```
systemctl start mailfrom
```

### Logging

The code relies on syslog to store the information about the events. Be sure your ``rsyslog`` daemon is enabled and running. The log facility is the one of mail. On CentOS and RHEL the events, related to the milter operations, are descibed in ``/var/log/maillog`` by default.
