## CIDADÃO BRASILEIRO!
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
echo '--- LOCALE do próprio shell inclusive, primeira tela * segunda tela C.UTF8 ---'
# git
sudo apt-get install git

export LANGUAGE=pt_BR.UTF-8
export LANG=pt_BR.UTF-8
LANG=C.UTF-8 # só mensagens de erro em ingles
locale-gen pt_BR.UTF-8
update-locale LANG=pt_BR.UTF-8
dpkg-reconfigure locales
export LC_ALL=pt_BR.UTF-8

echo '--- NOTA: se for DigitalOcean, rodar agora o sh de atualizacao. ---'

echo '--- AGORA SAIR (exit) e depois check com dump ---'
