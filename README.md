# install-php

apt install php-json php-iconv php-phar

Instale o nginx

chown +R [seu_usuario] /var/www/html

https://www.digitalocean.com/community/tutorials/como-instalar-linux-nginx-mysql-php-pilha-lemp-no-ubuntu-16-04-pt

sudo apt-get install lamp-server^


ou
```
curl https://www.apachefriends.org/xampp-files/7.4.19/xampp-linux-x64-7.4.19-0-installer.run -o xampp.run
sudo ./xampp.run
sudo chmod 777 /opt/lampp/htdocs -R
sudo chmod 755 /opt/lampp/phpmyadmin -R
service mysql stop
sudo /opt/lampp/lampp start
sudo /opt/lampp/lampp start

``` 
