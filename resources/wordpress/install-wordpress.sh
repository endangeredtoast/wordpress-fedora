echo What is your website domain:
read domain
curl https://en-ca.wordpress.org/latest-en_CA.zip > /var/www/html/wordpress.zip
unzip /var/www/html/wordpress.zip -d /var/www/html/
mv /var/www/html/wordpress/ /var/www/html/$domain
chown -R apache:apache /var/www/html/$domain
cp nginx/mydomain.conf /etc/nginx/conf.d/$domain.conf
sed -i "s/example.com/$domain www.$domain/" /etc/nginx/conf.d/$domain.conf
sed -i "s/mydomain/$domain/" /etc/nginx/conf.d/$domain.conf
systemctl restart nginx.service


# Setup Cache in Memory
mkdir /var/www/html/$domain/wp-content/cache
chown -R apache:apache /var/www/html/$domain/wp-content/cache
echo tmpfs /var/www/html/$domain/wp-content/cache tmpfs nosuid,nodev,noatime,user,uid=42,gid=42 0 0 >> /etc/fstab
systemctl daemon-reload


#Done
echo Complete!
echo
echo Wordpress was installed to /var/www/html/$domain, and owner set to apache apache.
echo Nginx Configuration is located at /etc/nginx/conf.d/$domain.conf
echo
echo Thank you. Goodbye.
