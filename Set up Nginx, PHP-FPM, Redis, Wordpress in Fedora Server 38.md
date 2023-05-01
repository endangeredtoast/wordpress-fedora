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
