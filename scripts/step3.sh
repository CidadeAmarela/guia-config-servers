if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt-get update

#Apache2
apt-get install apache2 libapache2-mod-php7.0

#Fornecer permissão /www
chown -R www-data:www-data /var/www
chmod -R g+rw /var/www

#PHP7.0
apt-get install php7.0 php7.0-mysql php7.0-mbstring php7.0-imap

#MySQL
apt-get install mysql-server 
apt-get install libapache2-mod-auth-mysql

#postgreSQL
apt-get install postgresql-9.5 postgresql-contrib-9.5 postgis-2.2

echo '.. próximo passo PostFix'

