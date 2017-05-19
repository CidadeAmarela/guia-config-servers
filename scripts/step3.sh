if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt update

#Apache2
apt install apache2 libapache2-mod-php7.0

#Fornecer permissão /www
chown -R www-data:www-data /var/www
chmod -R g+rw /var/www

#PHP7
apt install php7.0 php7.0-mysql php7.0-mbstring php7.0-imap php7.0-mcrypt

#MySQL
apt install mysql-server

#postgreSQL
apt install postgresql-9.5 postgresql-contrib-9.5 postgis-2.2

echo '.. próximo passo PostFix'
