SPEC1 (Requisitos Gerais)

* [**Preparo do client** do operador das instalações](#preparo-do-client)
* [**Preparo da VM** (Droplet)](#preparo-da-vm)  contendo os servers

Continua em [SPEC2](SPEC2_instalConfig.md).

----

Processo de instalação "a partir do zero"...

# Preparo do client #

A interface escolhida para gestão do servidor CidadeAmarela DigitalOcean é feita através de protocolos de comunicação de dados padrão da internet:
* [HTTPS](https://www.wikidata.org/wiki/Q44484): o portal DigitalOcean.com permite login seguro, e a partir dele todas as operações administrativas são realizadas.
* [SFTP](https://www.wikidata.org/wiki/Q1126823): transferência "em massa" e gestão de arquivos e pastas.
* [SSH](https://www.wikidata.org/wiki/Q170460): para demais operações de suporte e manutenção.

O administrador não deve estabelecer conexões em ambientes impróprios. Considera-se "ambiente próprio" e obrigatório: 

* Sistema operacional rodando em *pendrive* (memória USB) seguro e isolado. [Tails](https://tails.boum.org/index.pt.html) ou [Debian Stable 8+ Mínimo e atualizado](https://fixmynix.com/step-by-step-debian-minimal-install-guide), sem nenhum aplicativo adicional instalado, com todas as configurações em inglês, com configurações adicionais de segurança.

 * (copiando imagem por [UNetBootin](https://unetbootin.github.io/)...NÃO)  Sugerimos fortemente usar Tails (!), depois de confundir install com uso, alem de esperar horas por um boot, [Tails tem um ótimo passo-a-passo](https://tails.boum.org/install/os/index.pt.html) e tem um boot rápido!
   
* Acesso HTTPS: navegador Firefox nativo (versão estável) da distribuição Debian, no terminal lynx ou wget. Firefox com “security settings” ativados ao máximo permitido pelo portal DigitalOcean.

* Acesso SFTP e SSH: via terminal (nativo Debian). 

* Demais cuidados (reconhecidamente limitados) no acesso e manipulação de senhas e metadados.

* Acesso físico realizado de máquina e rede confiáveis.

Além da obrigação de uso dos sistemas acima, cada administrador deve documentar para o Conselho a máquina, os locais de uso, fornecedor de banda internet, e preencher planilha cidAmarela-HostAdmin com horários e IPs em que esteve conectado. 

# Preparo das autenticações #

 1. Login OpenDigtal: usar [two-factor-authentication](https://www.digitalocean.com/company/blog/introducing-two-factor-authentication).

 2. Gerar a chave do SSH no *pendrive* de forma segura: [ver esse guia didático do Github](https://help.github.com/categories/ssh/).

 3. ... outros cuidados no preparo do servidor SSH... [ref1](https://www.digitalocean.com/community/tutorials/7-security-measures-to-protect-your-servers), [ref2](https://blog.butecopensource.org/configuracoes-do-openssh-que-podem-fazer-toda-a-diferenca/), [ref3](https://tails.boum.org/doc/about/warning/index.pt.html).
 
----

# Preparo da VM #
Passos básicos:
 1. No ambiente Digital Ocean, depois do login, navegar para [Droplets](https://cloud.digitalocean.com/droplets). 
 2. Criar um droplet novo ou fazer REBUILD (mesma coisa com a vantagem de não perder IP).
 3. entrar no shell com segurança
 4. Seguir [*steps* da SPEC2](SPEC2_instalConfig.md)

a seguir alguns detalhes para o "rebuild/destroy" do Droplet e uso seguro do ssh.

### Droplet
Escolha do Droplet (imagem): "ubuntu 16 LTS" no Google e na UBUNTU é `16.04.1` , qualquer outra coisa corre o risco de não ser LTS, fique com o LTS.

Como vai ser usado para envio de e-mails, "o Droplet precisa ser rotulado com um fully qualified domain name (example something.com)"([suporte](https://www.digitalocean.com/community/questions/how-do-i-setup-a-ptr-record?answer=26923)) antes de criar seu [*PTR  record* local](https://www.siteground.com/kb/what_is_a_ptr_record_and_how_to_add_one/) no Droplet. Para renomear o Droplet selecione ele no painel de conrole e clique no nome (é um link sem nenhum botão muito óbvio). 

### ssh

Quando no seu client está usando `ssh` para um determinado endereço (IP ou domínio), o ssh cria uma chave... Quando recriamos tudo com "Rebuild Droplet", essa chave perde a validade, e chamar por exemplo `ssh root@11.22.221.141` vai dar erro.
O próprio `ssh` avisa com "remove with": pode-se corrigir com `ssh-keygen -f "/home/fulano/.ssh/known_hosts" -R 11.22.221.141`. <br/>NOTA:  trocar "/fulano" pelo seu usuário local de onde está chamando o ssh; e lembrar que a nova  senha da DigitalOcean virá por e-mail (para o coordenador).

### Referências 

  * [How To Create Your First DigitalOcean Droplet Virtual Server](https://www.digitalocean.com/community/tutorials/how-to-create-your-first-digitalocean-droplet-virtual-server)

  * [Initial Server Setup with Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-16-04)

------

# Preparo dos domínios #

Cada domínio de [networking/domains](https://cloud.digitalocean.com/networking/domains) ...  trocar o IP do "A"...

# ... Testes Estudo ...
... além dos já citados ... [test issues for email](https://github.com/tomav/docker-mailserver/issues/324))...


