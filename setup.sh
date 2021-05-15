banner() {

clear

echo -e "\033[31m      ______        _________________|          ______            \e[0m";
echo -e "\033[31m     /  __  \       |  ______________|         /  __  \           \e[0m";
echo -e "\033[31m    /  /  \  \      |  |                      /  /  \  \          \e[0m";
echo -e "\033[31m   /  /    \  \     |  |                     /  /    \  \         \e[0m";
echo -e "\033[31m  /  [[[[]]]]  \    |  |          ____      /  [[[[]]]]  \        \e[0m";
echo -e "\033[31m /  /        \  \   |  |__________|  |     /  /        \  \       \e[0m";
echo -e "\033[31m/  /          \  \  |________________|    /  /          \  \      \e[0m";


printf "\e[1;77m Facebook :- https://www.facebook.com/profile.php?id=100007071872377 \e[0m \n"
printf "\e[1;77m v2.0 Coded By https://github.com/AntonyAGA/ \e[0m \n"

}

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
