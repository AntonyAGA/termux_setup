#!/system/bin/sh
 
banner() {
# Regular
Bla='\e[0;30m';
Red='\e[0;31m';
Gre='\e[0;32m';
Yel='\e[0;33m';
Blu='\e[0;34m';
Pur='\e[0;35m';
Cya='\e[0;36m';
Whi='\e[0m';
Org='\e[0;33m';    
clear
echo -e "\n\n\n"
echo -e "${Red}                                                                                                       
            ██████████             ██████████████████████████             ██████████                                      
           █████  █████            ██████████████████████████            █████  █████                                   
${Gre}          █████    █████           █████             ████████           █████    █████ 
         █████      █████          █████             ████████          █████      █████       
        █████        █████         █████                              █████        █████                       
${Yel}       █████${Red}██████████${Yel}█████        █████                             █████${Red}██████████${Yel}█████    
      █████${Red}████████████${Yel}█████       █████                            █████${Red}████████████${Yel}█████    
     █████${Red}██████████████${Yel}█████      █████                           █████${Red}██████████████${Yel}█████              
${Cya}    █████                █████     █████          ███████████     █████                █████  
   █████                  █████    █████                █████    █████                  █████           
  █████                    █████   ██████████████████████████   █████                    █████                                                
${Pur} █████                      █████  ██████████████████████████  █████                      █████      
    
    
                                                             ";
echo -e "\n\n";
    echo -e "            #@+---------------About---------------+@#\n\n";
printf "${Whi}       Author   : Antony Ghayes (AGA) \n"
printf "${Gre}       Facebook : https://www.facebook.com/profile.php?id=100007071872377
      ${Cya} Version  : v2.0
      ${Yel} Github   : https://github.com/AntonyAGA/
    
    \e[0m \n"
echo -e "\n\n";
}

checkupdate() {
apt update && apt upgrade
}

#install packages
installpackages() {
echo "Install Packages"
apt update
apt upgrade
pkg install git wget python python2 python3 nano unzip zip php curl hydra ruby -y
pkg install perl proot nmap zsh man pip pip2 openssh tor all sudo openssl-tool -y
apt install python2
apt install curl
apt install perl
apt install ruby
gem install lolcat
pip install requests
pip2 install requests
pip install colorama
pip2 install colorama
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

reopen() {
	#!/bin/bash
echo "Script executed from: ${PWD}"

BASEDIR=$(dirname "$0")
echo "Script location: ${BASEDIR}"
	mydir="$(pwd)"
	Scr="$mydir"/'install.sh'
	echo "$Scr"
}


start1() {
printf "\n"
printf "\e[1;92m [ \e[0m\e[1;77m 01 \e[0m\e[1;92m ] \e[0m\e[1;93m Install Packages \e[0m\n"
printf "\e[1;92m [ \e[0m\e[1;77m 02 \e[0m\e[1;92m ] \e[0m\e[1;93m Install pip packages \e[0m\n"
printf "\e[1;92m [ \e[0m\e[1;77m 03 \e[0m\e[1;92m ] \e[0m\e[1;93m Storage permission \e[0m\n"
printf "\e[1;92m [ \e[0m\e[1;77m 04 \e[0m\e[1;92m ] \e[0m\e[1;93m Install Ngrok \e[0m\n"
printf "\e[1;92m [ \e[0m\e[1;77m 05 \e[0m\e[1;92m ] \e[0m\e[1;93m Exit \e[0m\n"
printf "\e[1;92m [ \e[0m\e[1;77m 06 \e[0m\e[1;92m ] \e[0m\e[1;93m Reopen \e[0m\n"
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
elif [[ $option_server -eq 5 ]]; then
exit 1
elif [[ $option_server -eq 6 ]]; then
reopen
else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
sleep 1
clear
gohome
fi
}


gohome() {
cd $HOME
clear
banner
start1
}

gohome
