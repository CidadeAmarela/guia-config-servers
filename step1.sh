
## ... falta criar usuário e logar com usuário


#Apache2
sudo apt-get install apache2 libapache2-mod-php7.0

#Fornecer permissão /www
sudo chown -R www-data:www-data /var/www
sudo chmod -R g+rw /var/www

#PHP7.0
sudo apt-get install php7.0 php7.0-mysql

#MySQL
sudo apt-get install mysql-server libapache2-mod-auth-mysql

#postgreSQL
apt-get install postgresql-9.5 postgresql-contrib-9.5 postgis-2.2

#WordPress
sudo apt-get install postgresql postgresql-contrib

#Postfix
sudo DEBIAN_PRIORITY=low apt-get install postfix
sudo nano /etc/postfix/virtual
sudo nano /etc/postfix/main.cf
sudo postmap /etc/postfix/virtual

#PostfixAdmin
wget https://sourceforge.net/projects/postfixadmin/files/postfixadmin/postfixadmin-3.0/postfixadmin-3.0.tar.gz/download

# git
sudo apt-get install git
