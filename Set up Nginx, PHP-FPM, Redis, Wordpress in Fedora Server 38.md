# How To Install Wordpress with Nginx, PHP-FPM, Redis, phpMyAdmin, and various other php extensions.
First you'll need to install Fedora Server 38. This is beyond the scope of this tutorial.





## SELinux
First you'll need to disable SELinux.
Edit `/etc/selinux/config` and revert to "permissive" behavior.
```
SELINUX=permissive
```
Then run this command:
```
sudo setenforce 0
```



## Install Required Software
Now you'll need to install the necessary components.
```
sudo dnf install nginx php-fpm php-mysqlnd mariadb-server php-pear php-devel redis phpmyadmin
```



## Disable Apache (if enabled)
```
sudo systemctl disable httpd.service
sudo systemctl stop httpd.service
```


## Enable Services
```
sudo systemctl enable nginx.service php-fpm.service mariadb.service
sudo systemctl start nginx.service php-fpm.service mariadb.service
```


## Open Firewall Ports
```
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --reload
```

## Set up Database with phpMyAdmin
Start the database server.
```
sudo systemctl start mariadb.service
```
Set root password.
```
sudo mysql_secure_installation
```
Login to phpMyAdmin at 'http://yourserverip/phpMyAdmin' with the password you set earlier.


