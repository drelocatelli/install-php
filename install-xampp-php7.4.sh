curl https://www.apachefriends.org/xampp-files/7.4.19/xampp-linux-x64-7.4.19-0-installer.run -o xampp.run
sudo chmod +x xampp.run
sudo ./xampp.run
sudo chmod 777 /opt/lampp/htdocs -R
sudo chmod 755 /opt/lampp/phpmyadmin -R
service mysql stop
sudo /opt/lampp/lampp start
