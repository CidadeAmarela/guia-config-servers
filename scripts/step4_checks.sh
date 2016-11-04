## fabio edita aqui e depois da git pull la

echo '--- VERSOES ---'
postconf -d | grep mail_version
dovecot --version

echo '--- SERVICES ---'
service postfix status    | grep postfix.service
service dovecot status    | grep dovecot.service
service --status-all


echo '-- -- -- /etc/postfix/*.cf'
cat /etc/postfix/mysql-virtual-mailbox-domains.cf
cat /etc/postfix/mysql-virtual-mailbox-maps.cf
cat /etc/postfix/mysql-virtual-alias-maps.cf
cat /etc/postfix/mysql-virtual-email2email.cf
cat /etc/postfix/master.cf


