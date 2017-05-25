echo '--- VERSOES ---'

psql --version
php --version
git --version

echo '--- ETC ---'
php --info | grep -v REQUEST_TIME

echo '--- SERVICES ---'

service apache2 status    | grep -E "apache2.service|Drop-In"
service mysql status      | grep mysql.service
service postgresql status | grep postgresql.service
service --status-all
