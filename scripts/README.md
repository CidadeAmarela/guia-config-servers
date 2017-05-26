
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

## Psotfix ##

Ver [srv3_postfix](srv3_postfix).
