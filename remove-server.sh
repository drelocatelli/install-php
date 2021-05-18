cd /opt/lampp/ && sudo ./uninstall
sudo apt-get remove --purge php*
sudo apt-get autoremove

sudo apt-get remove --purge mysql*
sudo apt-get autoremove
sudo rm -rf /var/lib/mysql
sudo rm -rf /etc/mysql

sudo apt-get remove --purge phpmyadmin*
sudo apt-get autoremove
sudo apt-get autoclean

sudo rm -rf /etc/php /usr/share/php /usr/bin/php
sudo rm -rf /usr/sbin/apache2 /usr/lib/apache2 /usr/share/apache2 /usr/share/man/man8/apache2.8.gz

sudo apt-get remove --purge phpmyadmin* mysql* php*
