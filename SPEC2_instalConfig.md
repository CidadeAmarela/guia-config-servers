SPEC2 (passo-a-passo da instalação e configurações)

Certificar-se de [ter preparado adequadamente conforme SPEC1](SPEC1_requisitosGerais.md).

# step1 

Em seguida, a primeira coisa a fazer depois da troca de senha no `ssh`,  clonar o git deste projeto:
```sh
mkdir /tmp/sandbox
cd /tmp/sandbox
git clone https://github.com/CidadeAmarela/guia-config-servers.git
cd guia-config-servers
pwd
```
o resultado do `pwd`  deverá ser `/tmp/sandbox/guia-config-servers`.

rodar [step1](https://github.com/CidadeAmarela/guia-config-servers/blob/master/scripts/step1.sh)
ou seja `sh scripts/step1.sh`. **Atenção**:
* manter terminal em janela grande para não comprometer telas interativas
* usar espaço para selecionar/deselecionar o pt-BR na primeira tela interativa
* posicionar o cursor sobre C.en-UTF8 na segunda tela, relativa ao ambiente shel, que precisa ser ingles para as mensagens de erro serem mais facilmente rastreáveis em guias e fóruns bons.
* sair do shel com `exit`

Ao voltar com `ssh`,
```sh
cd /tmp/sandbox/guia-config-servers
sh scripts/step1_checks.sh | diff dumps/step1.txt -
```
se o diff acima não devolver nada (significa "arquivos identicos") então perfeito.

# step2
* https://github.com/CidadeAmarela/guia-config-servers/blob/master/scripts/step2.sh
pode pular se for só teste sem segurança.

# step3
é o mais demorado ... reservar pelo menos 10 minutos e cuidado com o ssh que pode perder conexão.

* https://github.com/CidadeAmarela/guia-config-servers/blob/master/scripts/step3.sh
Responder "Y" ou "yes" para tudo que terminar em "space will be used".

No final conferir com `sh scripts/step3_checks.sh | diff dumps/step3.txt -` para atestar que foi tudo ok.

# step4 - Postfix

Por hora ver também [wiki/Resumo-do-novo-Step4)](https://github.com/CidadeAmarela/guia-config-servers/wiki/Resumo-do-novo-Step4).

```sh
wget https://sourceforge.net/projects/postfixadmin/files/postfixadmin/postfixadmin-3.0/postfixadmin-3.0.tar.gz
sudo DEBIAN_PRIORITY=low apt-get install postfix postfix-mysql
```
Configuração da instalação:
```
    General type of mail configuration -> Internet Site
    System mail name -> cidadeamarela
    Root and postmaster mail recipient -> usuário
    Other destinantions to accept mail for -> localhost, localhost.$mydomain
    Force sybchronous updates on mail queue -> No
    Local networks -> 127.0.0.0/8 [::ffff:127.0.0.0]/104 [::1]/128
    Mailbox size limit -> 0
    Local address extension character -> +
    Internet protocols to use -> all        
```
* https://github.com/CidadeAmarela/guia-config-servers/blob/master/etc/pfadmin_DOCUMENTS/POSTFIX_CONF.txt

TESTES MINIMOS E AUDITORIA
* `diff dumps/main.cf /etc/postfix/main.cf`
* `tail /var/log/mail.log`
* `php scripts/testmail.php -h` 
* ... testar com thunderbird ...
* ... Importante tutorial para [Checking FQDN, Reverse-DNS/PTR, MX](https://easyengine.io/tutorials/mail/fqdn-reverse-dns-ptr-mx-record-checks/).

# ...

* https://github.com/CidadeAmarela/guia-config-servers/blob/master/etc/pfadmin_DOCUMENTS/BACKUP_MX.txt
* 

# ETC...

### refs importantes

* detalhes mysql nesta imagem droplet, https://www.digitalocean.com/community/tutorials/how-to-use-the-wordpress-one-click-install-on-digitalocean
* nosso padrão de log-teste http://45.55.221.141/mail.log

### testes 
* conferir portas e conexões depois do postfix, gerar relatorio com `netstat -A inet -nlp`
* `service postfix restart`
* `echo "Test mail from postfix" | mail -s "Test Postfix2" ppkrauss@gmail.com`
* `cat /var/log/mail.log | grep yellow`...


### lendo logs e fornecendo para o suporte

```sh
cp /var/log/mail.log /var/www/html
chmod g+rwX /var/www/html/mail.log
```

### dicas
* directories to 755 (-rwxr-xr-x): `find /opt/lampp/htdocs -type d -exec chmod 755 {} \;`  (755 = a+rX)

* files to 644 (-rw-r--r--): `find /opt/lampp/htdocs -type f -exec chmod 644 {} \;`   (644 = a+r)

...
