
Scripts de "inicialização padrão" dos servidores... Dois sabores: Apache2 e NGINX. 
Todos rodando como root a partir de uma máquina [UBUNTU 16 LTS](http://releases.ubuntu.com/16.04/).

Para inicialização:

 1. Formatar (rebuild da MV ou *droplet*) com ISO do UBUNTU.
 2. Determinar forma segura de acesso SSH.
 3. Acessar via SSH como root, ou logando e depois fazendo `sudo su`.
 4. Numa pasta do user root ou sandbox, `git clone https://github.com/CidadeAmarela/guia-config-servers.git`
 5. `cd guia-config-servers/scripts` ... e decidir o que a máquina vai ser (Apache? NIGNX? adiciona Postfix nela?)
 6. ir para a pasta indicada por `srvN_xxx` conforme contextualização abaixo.
 
## Apache ##

Ver [srv1_apache](srv1_apache).

## Nginx ##

Ver [srv2_nginx](srv2_nginx), a maior parte do script é mantida como cópia do `srv1_apache`. 
Após rodar scripts, seguir a  partir do [Step2 deste tutorial Digitalocean](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-16-04#step-2-adjust-the-firewall).

### Bugs, pegadinhas e revisões ###

1. nesse processo de instalação o NGINX fica com um bug residual, não bastou step3, usando correcao  (gambiarra) https://stackoverflow.com/a/42084804/287948

2. O server SSH default cai muito rapido, contornado o problema com dicas de alteraço no server-SSH https://www.bjornjohansen.no/ssh-timeout , alterado com nano `/etc/ssh/sshd_config`  ... Mas continua dando timeout, talvez precise arrumar o client, conferir.

3. (pendente) Sobre NodeJS ver PPA em https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions ou https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-16-04 (*stable* hoje ainda  é 6.x)

4. Usando  https://certbot.eff.org/#ubuntuxenial-nginx com su,
```
 apt  install software-properties-common
 add-apt-repository ppa:certbot/certbot
 apt update
 apt install python-certbot-nginx 
```
... deu pau, ver [esta discussão de ajuda](https://community.letsencrypt.org/t/certbot-on-nginx-not-working-no-plug-and-play-solution/33895/4).




## Postfix ##

Ver [srv3_postfix](srv3_postfix).
