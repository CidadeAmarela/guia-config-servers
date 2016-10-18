if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
#Apache2
apt-get install apache2 libapache2-mod-php7.0

#Fornecer permissão /www
chown -R www-data:www-data /var/www
chmod -R g+rw /var/www

#PHP7.0
apt-get install php7.0 php7.0-mysql

#MySQL
apt-get install mysql-server libapache2-mod-auth-mysql

#postgreSQL
apt-get install postgresql-9.5 postgresql-contrib-9.5 postgis-2.2

#WordPress
sudo apt-get install postgresql postgresql-contrib

#Postfix
DEBIAN_PRIORITY=low apt-get install postfix
nano /etc/postfix/virtual
nano /etc/postfix/main.cf
postmap /etc/postfix/virtual

#PostfixAdmin
wget https://sourceforge.net/projects/postfixadmin/files/postfixadmin/postfixadmin-3.0/postfixadmin-3.0.tar.gz/download
