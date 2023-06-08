yum install ImageMagick ImageMagick-devel ImageMagick-perl php-opcache
pecl install imagick redis apcu
echo "extension=imagick.so" >> /etc/php.ini
echo "extension=redis.so" >> /etc/php.ini
echo "extension=apcu.so" >> /etc/php.ini
