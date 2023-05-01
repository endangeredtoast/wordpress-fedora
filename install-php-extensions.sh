yum install ImageMagick ImageMagick-devel ImageMagick-perl
pecl install imagick redis
echo "extension=imagick.so" >> /etc/php.ini
echo "extension=redis.so" >> /etc/php.ini
