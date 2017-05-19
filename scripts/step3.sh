if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt update

#Apache2
apt install apache2 libapache2-mod-php7.1

#Fornecer permissão /www
chown -R www-data:www-data /var/www
chmod -R g+rw /var/www

#PHP7.1
apt install php7.1 php7.1-mysql php7.1-mbstring php7.1-imap php7.1-mcrypt

#MySQL
apt install mysql-server

#postgreSQL
apt install postgresql-9.6 postgresql-contrib-9.6 postgis-2.3

echo '.. próximo passo PostFix'

