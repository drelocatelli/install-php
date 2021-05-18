#!/bin/bash
echo -n "Qual a versão? [7|7.4|8]: "
read version
if [ $version -eq "8" ]; then
wget -O xampp.run https://ufpr.dl.sourceforge.net/project/xampp/XAMPP%20Linux/8.0.6/xampp-linux-x64-8.0.6-0-installer.run
elif [ $version -eq "7.4" ]; then
wget -O xampp.run https://www.apachefriends.org/xampp-files/7.4.19/xampp-linux-x64-7.4.19-0-installer.run
elif [ $version -eq "7" ]; then
wget -O xampp.run https://master.dl.sourceforge.net/project/xampp/XAMPP%20Linux/7.0.9/xampp-linux-x64-7.0.9-2-installer.run?viasf=1
fi
sudo chmod +x xampp.run
sudo ./xampp.run
find /opt/lampp/htdocs/. \( -type d -exec chmod 755 {} + \) -o \( -type f -exec chmod 644 {} + \)
sudo chmod 777 /opt/lampp/htdocs -R
sudo chmod 755 /opt/lampp/phpmyadmin -R
service mysql stop
# create htdocs shortcut in desktop
cd "${HOME}/Área de Trabalho"; cd "${HOME}/desktop"; cd "${HOME}/Desktop"
file="htdocs"
echo "[Desktop Entry]\nEncoding=UTF-8\nName=${file}\nType=Application\nExec=nemo '/opt/lampp/htdocs'\nIcon=folder-publicshare" > "${file}.desktop"
echo && echo && echo && echo && echo -e "==============================\n        INSTALAÇÃO CONCLUIDA!        \n==============================\n"
# start application
sudo /opt/lampp/lampp start
