#Check for updates
echo "Go to home directory"
cd $HOME
echo "Check For updates"
apt update && apt upgrade
#install packages
echo "Install Packages"
pkg install git wget python python2 python3 nano unzip zip php curl hydra ruby perl proot nmap zsh man pip pip2 openssh tor all sudo openssl-tool -y
#install some packages with pip
pip install lolcat
pip2 install requestes
pip2 install mechanize
pip2 install bundler
pip2 install colorama
pip install wordlist
pip install click

echo "Ask for Storage permission"
termux-storage-setup
