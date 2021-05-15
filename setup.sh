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

gohome{
cd $HOME
checkupdate
clear
banner
start1
}
checkupdate(){
apt update && apt upgrade
}
#install packages
installpackages(){
echo "Install Packages"
pkg install git wget python python2 python3 nano unzip zip php curl hydra ruby -y
pkg install perl proot nmap zsh man pip pip2 openssh tor all sudo openssl-tool -y
gohome
}
#install some packages with pip
installpip(){
pip install lolcat
pip2 install requestes
pip2 install mechanize
pip2 install bundler
pip2 install colorama
pip install wordlist
pip install click
gohome 
banner() {

clear

echo -e "\033[31m      ______        _________________|          ______            \e[0m";
echo -e "\033[31m     /  __  \       |  ______________|         /  __  \           \e[0m";
echo -e "\033[31m    /  /  \  \      |  |                      /  /  \  \          \e[0m";
echo -e "\033[31m   /  /    \  \     |  |                     /  /    \  \         \e[0m";
echo -e "\033[31m  /  [[[[]]]]  \    |  |          ____      /  [[[[]]]]  \        \e[0m";
echo -e "\033[31m /  /        \  \   |  |__________|  |     /  /        \  \       \e[0m";
echo -e "\033[31m/  /          \  \  |________________|    /  /          \  \      \e[0m";
echo -e "\n\n";
printf "\e[1;77m Facebook :- https://www.facebook.com/profile.php?id=100007071872377 \e[0m \n"
printf "\e[1;77m v2.0 Coded By https://github.com/AntonyAGA/ \e[0m \n"
echo -e "\n\n";
}

checkupdate() {
apt update && apt upgrade
}

#install packages
installpackages() {
echo "Install Packages"
pkg install git wget python python2 python3 nano unzip zip php curl hydra ruby -y
pkg install perl proot nmap zsh man pip pip2 openssh tor all sudo openssl-tool -y
gohome
}
#install some packages with pip
installpip() {
pip install lolcat
pip2 install requestes
pip2 install mechanize
pip2 install bundler
pip2 install colorama
pip install wordlist
pip install click
gohome
}

storage() {
echo "Ask for Storage permission"
termux-storage-setup
gohome
}

installngrok() {
gohome
if [[ -e ngrok ]]; then
echo ""
else
command -v unzip > /dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Install it. Aborting.";
exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting.";
exit 1; }
printf "\e[1;92m[\e[0m+\e[1;92m] Downloading Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi

else
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi
printf "\e[1;92m[\e[0m+\e[1;92m] Ngrok installed successfully...\n"
}


start1() {
printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m 1- Install Packages \e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m 2- Install pip packages \e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m 3- Storage permission \e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;93m 4- Install Ngrok \e[0m\n"
default_option_server="1"
read -p $'\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Choose a Port Forwarding option: \e[0m' option_server
option_server="${option_server:-${default_option_server}}"
if [[ $option_server -eq 1 ]]; then
installpackages
elif [[ $option_server -eq 2 ]]; then
installpip
elif [[ $option_server -eq 3 ]]; then
storage
elif [[ $option_server -eq 4 ]]; then
installngrok
else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
sleep 1
clear
gohome
fi
}


gohome() {
cd $HOME
checkupdate
clear
banner
start1
}

gohome

}

storage{
echo "Ask for Storage permission"
termux-storage-setup
gohome
}

installngrok(){
gohome
if [[ -e ngrok ]]; then
echo ""
else
command -v unzip > /dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Install it. Aborting.";
exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting.";
exit 1; }
printf "\e[1;92m[\e[0m+\e[1;92m] Downloading Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi

else
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi
printf "\e[1;92m[\e[0m+\e[1;92m] Ngrok installed successfully...\n"
}

installmetasploit(){
}


start1() {
printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m 1- Install Packages \e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m 2- Install pip packages \e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m 3- Storage permission \e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m 4- Install Ngrok \e[0m\n"
default_option_server="1"
read -p $'\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Choose a Port Forwarding option: \e[0m' option_server
option_server="${option_server:-${default_option_server}}"
if [[ $option_server -eq 1 ]]; then
installpackages
elif [[ $option_server -eq 2 ]]; then
installpip
elif [[ $option_server -eq 3 ]]; then
storage
elif [[ $option_server -eq 4 ]]; then
installngrok
else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
sleep 1
clear
start1
fi
}


gohome


 
banner() {

clear

echo -e "\033[31m      ______        _________________|          ______            \e[0m";
echo -e "\033[31m     /  __  \       |  ______________|         /  __  \           \e[0m";
echo -e "\033[31m    /  /  \  \      |  |                      /  /  \  \          \e[0m";
echo -e "\033[31m   /  /    \  \     |  |                     /  /    \  \         \e[0m";
echo -e "\033[31m  /  [[[[]]]]  \    |  |          ____      /  [[[[]]]]  \        \e[0m";
echo -e "\033[31m /  /        \  \   |  |__________|  |     /  /        \  \       \e[0m";
echo -e "\033[31m/  /          \  \  |________________|    /  /          \  \      \e[0m";
echo -e "\n\n";
printf "\e[1;77m Facebook :- https://www.facebook.com/profile.php?id=100007071872377 \e[0m \n"
printf "\e[1;77m v2.0 Coded By https://github.com/AntonyAGA/ \e[0m \n"
echo -e "\n\n";
}

checkupdate() {
apt update && apt upgrade
}

#install packages
installpackages() {
echo "Install Packages"
pkg install git wget python python2 python3 nano unzip zip php curl hydra ruby -y
pkg install perl proot nmap zsh man pip pip2 openssh tor all sudo openssl-tool -y
gohome
}
#install some packages with pip
installpip() {
pip install lolcat
pip2 install requestes
pip2 install mechanize
pip2 install bundler
pip2 install colorama
pip install wordlist
pip install click
gohome
}

storage() {
echo "Ask for Storage permission"
termux-storage-setup
gohome
}

installngrok() {
gohome
if [[ -e ngrok ]]; then
echo ""
else
command -v unzip > /dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Install it. Aborting.";
exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting.";
exit 1; }
printf "\e[1;92m[\e[0m+\e[1;92m] Downloading Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi

else
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi
printf "\e[1;92m[\e[0m+\e[1;92m] Ngrok installed successfully...\n"
}


start1() {
printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m 1- Install Packages \e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m 2- Install pip packages \e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m 3- Storage permission \e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;93m 4- Install Ngrok \e[0m\n"
default_option_server="1"
read -p $'\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Choose a Port Forwarding option: \e[0m' option_server
option_server="${option_server:-${default_option_server}}"
if [[ $option_server -eq 1 ]]; then
installpackages
elif [[ $option_server -eq 2 ]]; then
installpip
elif [[ $option_server -eq 3 ]]; then
storage
elif [[ $option_server -eq 4 ]]; then
installngrok
else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
sleep 1
clear
gohome
fi
}


gohome() {
cd $HOME
checkupdate
clear
banner
start1
}

gohome
