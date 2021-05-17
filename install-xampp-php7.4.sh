curl https://www.apachefriends.org/xampp-files/7.4.19/xampp-linux-x64-7.4.19-0-installer.run -o xampp.run
sudo chmod +x xampp.run
sudo ./xampp.run
sudo chmod 777 /opt/lampp/htdocs -R
sudo chmod 755 /opt/lampp/phpmyadmin -R
service mysql stop
# create htdocs shortcut in desktop
cd "${HOME}/Área de Trabalho"; cd "${HOME}/desktop"; cd "${HOME}/Desktop"
file="htdocs"
echo "[Desktop Entry]\nEncoding=UTF-8\nName=${file}\nType=Application\nExec=nemo '/opt/lampp/htdocs'\nIcon=folder-publicshare" > "${file}.desktop"
# start application
sudo /opt/lampp/lampp start
