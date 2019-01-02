echo "Update PHP5->PHP7 by Nguyen Duc Chien"
sudo add-apt-repository main
sudo add-apt-repository universe
sudo add-apt-repository restricted
sudo add-apt-repository multiverse
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update -y
sudo apt-get install -y apache2
sudo apt-get install -y php7.1 php7.1-common
sudo mv /etc/apache2/envvars /etc/apache2/envvars.bak
sudo apt-get remove libapache2-mod-php5 -y
sudo apt-get install libapache2-mod-php7.1 -y
sudo cp /etc/apache2/envvars.bak /etc/apache2/envvars
sudo apt-get install -y libapache2-mod-php7.1 libphp7.1-embed php7.1 php7.1-bcmath php7.1-bz2 php7.1-cgi php7.1-cli php7.1-common php7.1-curl php7.1-dba php7.1-dev php7.1-enchant php7.1-fpm php7.1-gd php7.1-gmp php7.1-imap php7.1-interbase php7.1-intl php7.1-json php7.1-ldap php7.1-mbstring php7.1-mcryp php7.1-mysql php7.1-odbc php7.1-opcache php7.1-pgsql php7.1-phpdbg php7.1-pspell php7.1-readline php7.1-recode php7.1-snmp php7.1-soap php7.1-sqlite3 php7.1-sybase php7.1-tidy php7.1-xml php7.1-xmlrpc php7.1-xsl php7.1-zip php7.1-xdebug unrar
sudo apt-get autoremove -y
sudo a2dismod php5
sudo a2enmod php7.1
sudo phpenmod xdebug
echo -e "\nxdebug.remote_enable=1\nxdebug.var_display_max_depth=-1\nxdebug.var_display_max_children=-1\nxdebug.var_display_max_data=-1\n" >> php.ini
phpmyadmin-ctl install
sudo apt-get install -y unrar
sudo apt-get install -y ncdu