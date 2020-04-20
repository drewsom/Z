#!/bin/bash
red='\033[0;31m'
green='\033[0;32m'
white='\033[1;37m'
blue='\033[0;34m'
yellow='\033[1;33m'


#git hub repos
Git_Clone(){
echo -e ${green} "[+]" ${white} "Downloading" ${red} "adXtract" ${white}
	git clone https://github.com/LordNem/adXtract &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "NetNTLM-Hashcat" ${white}
	git clone https://github.com/ins1gn1a/NetNTLM-Hashcat.git &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "CombineHarvester" ${white}
	git clone https://github.com/LordNem/CombineHarvester.git &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "testssl" ${white}
	git clone https://github.com/drwetter/testssl.sh.git &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "routersploit" ${white}
	git clone https://github.com/reverse-shell/routersploit.git &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "iker" ${white}
	git clone https://github.com/libcrack/iker.git &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "Mana" ${white}
	git clone https://github.com/sensepost/mana &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "FiercePhish" ${white}
	git clone https://github.com/Raikia/FiercePhish &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "dnsrecon" ${white}
	git clone https://github.com/darkoperator/dnsrecon.git &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "Frogger" ${white}
	git clone https://github.com/nccgroup/vlan-hopping---frogger.git &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "CMSMap" ${white}
	git clone https://github.com/Dionach/CMSmap.git &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "bettercap" ${white}
	git clone https://github.com/evilsocket/bettercap.git &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "SecLists" ${white}
	git clone https://github.com/danielmiessler/SecLists.git &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "Bloodhound" ${white}
	git clone https://github.com/BloodHoundAD/BloodHound.git &> /dev/null	
echo -e ${green} "[+]" ${white} "Downloading" ${red} "Responder" ${white}
	git clone https://github.com/lgandx/Responder.git &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "Impacket" ${white}
	git clone https://github.com/CoreSecurity/impacket.git &> /dev/null	
echo -e ${green} "[+]" ${white} "Installing" ${red} "sshfs" ${white}
	apt-get install sshfs -y &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "netcreds" ${white}
    git clone https://github.com/DanMcInerney/net-creds &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "powerupsql" ${white}
    git clone https://github.com/NetSPI/PowerUpSQL.git &> /dev/null
echo -e ${green} "[+]" ${white} "Downloading" ${red} "silenttrinity" ${white}
	git clone https://github.com/byt3bl33d3r/SILENTTRINITY.git &> /dev/null	
echo -e ${green} "[+]" ${white} "Downloading" ${red} "Eyewitness" ${white}	
	git clone https://github.com/FortyNorthSecurity/EyeWitness.git &> /dev/null
echo -e ${green} "[+]" ${yellow} "To install eyewitness, please run" ${white} "cd /opt/Eyewitness/Python/setup && sudo ./setup.sh"
echo -e ${green} "[+]" ${white} "Downloading" ${red} "bleeding edge cme" ${white}
    git clone --recursive https://github.com/byt3bl33d3r/CrackMapExec &> /dev/null
    apt update &> /dev/null
    apt install python-pip -y &> /dev/null
    apt install python3-pip -y &> /dev/null
echo -e ${green} "[+]" ${white} "Installing" ${red} "bleeding edge cme" ${white}
	apt-get install -y libssl-dev libffi-dev python-dev build-essential &> /dev/null
	pip3 install --user pipenv &> /dev/null
    cd CrackMapExec && pipenv install &> /dev/nulls
    pipenv shell &> /dev/null
    python setup.py install &> /dev/null
echo -e ${green} "[+]" ${yellow} "Use" ${white} "pipenv shell" ${yellow}"inside the /opt/CrackMapExec directory"
    exit


# Update Packages
#git clone git://git.kali.org/packages/exploitdb.git
}

#Set Target Location
printf "\033c"
set_target (){
echo -e ${green} "[+]" ${yellow} "Tools will be placed in the following directory"${white} "/opt/" ${red}
cd /opt/
Git_Clone
}

#Install Script
printf "\033c"
echo -e ${blue} 
cat << "EOF"
 
      /`·.¸
     /¸...¸`:·
 ¸.·´  ¸   `·.¸.·´)
: © ):´;      ¸  {
 `·.¸ `·  ¸.·´\`·¸)
     `\\´´\¸.·´
 
EOF

echo -e ${green} "[+]" ${white} "Do you want to Update && Upgrade <Y/n> " ${red}
read prompt
if [[ $prompt =~ ^(yes|Yes|y|Y| ) ]]
then
echo -e ${green} "[+]" ${white} "Performing updates Silently Please wait..."
 sudo apt-get update &> /dev/null && apt-get -y upgrade
set_target
else
set_target
fi
