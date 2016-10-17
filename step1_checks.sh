echo '--- VERSOES ---'

psql --version 
php --version
git --version

echo '--- ETC ---'
php --info | grep -v REQUEST_TIME
php --ini

