## fabio edita aqui e depois da git pull la

echo '--- VERSOES ---'

mysql --version
postconf -d | grep mail_version
dovecot --version

echo '--- SERVICES ---'

service postfix status
service dovecot status
