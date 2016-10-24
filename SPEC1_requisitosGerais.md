SPEC1 (Requisitos Gerais)

----

Processo de instalação "a partir do zero"...

# Preparo do client #
A interface escolhida para gestão do servidor CidadeAmarela DigitalOcean é feita através de protocolos de comunicação de dados padrão da internet:
* [HTTPS](https://www.wikidata.org/wiki/Q44484): o portal DigitalOcean.com permite login seguro, e a partir dele todas as operações administrativas são realizadas.
* [SFTP](https://www.wikidata.org/wiki/Q1126823): transferência "em massa" e gestão de arquivos e pastas.
* [SSH](https://www.wikidata.org/wiki/Q170460): para demais operações de suporte e manutenção.

O administrador não deve estabelecer conexões em ambientes impróprios. Considera-se "ambiente próprio" e obrigatório: 

* Sistema operacional rodando em *pendrive* (memória USB) seguro e isolado. [Tails](https://tails.boum.org/index.pt.html) ou [Debian Stable 8+ Mínimo e atualizado](https://fixmynix.com/step-by-step-debian-minimal-install-guide), sem nenhum aplicativo adicional instalado, com todas as configurações em inglês, com configurações adicionais de segurança.

   * Copiando imagem por [UNetBootin](https://unetbootin.github.io/) (supondo confiável a instalação em outro Linux por `sudo apt-get install unetbootin`). Talvez por `wget` seguido de cópia seja mais seguro, mas muito chato e não costuma funcionar...(no futuro teremos [debian-installer](https://www.debian.org/devel/debian-installer/)). Exemplo: 1) `wget -c http://ftp.nl.debian.org/debian/dists/jessie/main/installer-amd64/current/images/netboot/mini.iso`; ([achado aqui](https://www.debian.org/distrib/netinst)); 2) run unetbootin; 3) change BIOS; 4) boot.

* Acesso HTTPS: navegador Firefox nativo (versão estável) da distribuição Debian, no terminal lynx ou wget. Firefox com “security settings” ativados ao máximo permitido pelo portal DigitalOcean.

* Acesso SFTP e SSH: via terminal (nativo Debian). 

* Demais cuidados (reconhecidamente limitados) no acesso e manipulação de senhas e metadados.

* Acesso físico realizado de máquina e rede confiáveis.

Além da obrigação de uso dos sistemas acima, cada administrador deve documentar para o Conselho a máquina, os locais de uso, fornecedor de banda internet, e preencher planilha cidAmarela-HostAdmin com horários e IPs em que esteve conectado. 

# Preparo das autenticações #
* ...
* https://www.digitalocean.com/company/blog/introducing-two-factor-authentication/
* ...

# Preparo da VM #
 1. No ambiente Digital Ocean, depois do login, navegar para [Droplets](https://cloud.digitalocean.com/droplets). 
 2. Criar um droplet novo ou fazer REBUILD (mesma coisa com a vantagem de não perder IP).
 3. entrar no shell com segurança
 4. Seguir [[steps]]


Referências: 

  * [How To Create Your First DigitalOcean Droplet Virtual Server](https://www.digitalocean.com/community/tutorials/how-to-create-your-first-digitalocean-droplet-virtual-server)

  * [Initial Server Setup with Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-16-04)

# Preparo dos domínios #

Cada domínio de [networking/domains](https://cloud.digitalocean.com/networking/domains) ...  trocar o IP do "A"...
