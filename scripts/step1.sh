## CIDADÃO BRASILEIRO!
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
echo '--- LOCALE do próprio shell inclusive ---'
# git
sudo apt-get install git

export LANGUAGE=pt_BR.UTF-8
export LANG=pt_BR.UTF-8
locale-gen pt_BR.UTF-8
update-locale LANG=pt_BR
dpkg-reconfigure locales
export LC_ALL=pt_BR.UTF-8

echo '--- AGORA SAIR (exit) e depois check com dump ---'
