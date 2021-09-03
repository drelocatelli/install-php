bash

# Instala extensoes
sudo apt-get install php-mbstring libnet-libidn-perl php-all-dev php-cgi php-cli php-common php-curl php-dev php-gd php-gmp mcrypt php-mbstring php-xml

# habilita extensões
file="/opt/lampp/etc/php.ini"; echo -n `sudo sed -i 's/\;extension/extension/g' $file`; echo "todas extensões foram habilitadas de '$file'."

# cria o laravel dentro da pasta de projeto
php -r "readfile('https://getcomposer.org/installer');" | php && clear && php composer.phar create-project --prefer-dist laravel/installer projectName

# starta o servidor
php composer.phar install

sudo php artisan serve --port 80

# cria db
sudo php artisan make:model dbName -m

# cria controller
sudo php artisan make:controller controllName
