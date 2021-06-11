bash

# Instala extensoes
sudo apt install php-json php-iconv php-phar

# habilita extensões
file="/opt/lampp/etc/php.ini"; echo -n `sudo sed -i 's/\;extension/extension/g' $file`; echo "todas extensões foram habilitadas de '$file'."

# cria o laravel dentro da pasta de projeto
php -r "readfile('https://getcomposer.org/installer');" | php && clear && php composer.phar create-project --prefer-dist laravel/installer projectName
