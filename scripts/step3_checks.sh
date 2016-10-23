echo '--- VERSOES ---'

psql --version
php --version
git --version

echo '--- ETC ---'
php --info | grep -v REQUEST_TIME

echo '--- SERVICES ---'

service apache2 status
service mysql status
service postgresql status
