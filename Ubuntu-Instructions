# How To Install Wordpress with Nginx, PHP-FPM, Redis, phpMyAdmin, and various other php extensions.
First you'll need to install Ubuntu Server 22.04 LTS. This is beyond the scope of this tutorial.




## Install Required Software
Now you'll need to install the necessary components.
```
apt install nginx php8.1-fpm mariadb-server php-pear redis phpmyadmin imagemagick imagemagick-doc php-imagick php-redis php-apcu php-intl smbclient php-smbclient imagemagick imagemagick-doc
```

## Enable Services
```
sudo systemctl enable nginx.service php8.1-fpm.service mariadb.service redis.service
```


## Open Firewall Ports
```
sudo ufw allow http
sudo ufw allow https
```

## Set up Database with phpMyAdmin
Set root password.
```
sudo mysql_secure_installation
```
Login to phpMyAdmin at http://yourserverip/phpMyAdmin with the password you set earlier.
In the left sidebar, click on New. Enter a database name and choose utf8mb4_unicode_ci, then click Create.
On the top navigation bar, click on Privileges. Click on Add User Account.
Enter a username and password for the new account. Scroll down and click on Go. The database and user is now created.

## Install Wordpress
Run 'install-wordpress.sh' as root.
```
sudo ./install-wordpress-fedora.sh
```




# Helpful Links
https://www.linode.com/docs/guides/enabling-https-using-certbot-with-nginx-on-fedora/


