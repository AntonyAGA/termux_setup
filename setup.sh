#Check for updstes
cd $HOME
apt update && apt upgrade
#install packages
pkg install git wget python python2 python3 nano unzip zip php curl hydra ruby perl proot nmap zsh man -y
#install some packages with pip
pip install lolcat
pip2 install requestes
pip2 install mechanize
pip2 install bundler
pip2 install colorama

echo "Ask for Storage permission"
