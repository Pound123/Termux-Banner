#! /bin/bash
# Code color
green="\033[92m"
yellow="\033[93m"
red="\033[91m"
blue="\033[96m"
white="\033[97m"
Name=""
name=""
clear
cat Banner.txt | lolcat
# comman update&&install packet
update() {
          echo -e "${yellow}upd${blue}ate${green}.${yellow}.${red}.${blue}."
          apt update -y > /dev/null 2>&1
          apt upgrade -y > /dev/null 2>&1
}

# installpacket
installpacket() {
          echo -e "\n${yellow}Install ${blue}Packet...."
          apt install git -y > /dev/null 2>&1
          apt install wget -y > /dev/null 2>&1
          apt install curl -y > /dev/null 2>&1
          apt install python -y > /dev/null 2>&1
          apt install python2 -y > /dev/null 2>&1
          pip3 install lolcat -y > /dev/null 2>&1
          echo -e "\n${yellow}Install ${blue}Success!\n${white}"
}

# Comman
Comman()  {
        rm "/data/data/com.termux/files/usr/etc/bash.bashrc" > /dev/null 2>&1
        rm "/data/data/com.termux/files/usr/etc/motd" > /dev/null 2>&1
        read -p "Enter Your Name Banner: " Name
        read -p "Enter Your Name: " name
        touch "bash.bashrc"
        echo -e "clear\nfiglet $Name\nPS1='${white}┌─[${red}$name@Termux${white}]-[\w]\n└╼> ${white}'" >> "bash.bashrc"
        mv bash.bashrc /data/data/com.termux/files/usr/etc > /dev/null 2>&1
}

# The End
End() {
       echo -e "\n${white}[${green}=${yellow}=${red}=${blue}=${green}=${yellow}=${red}=${blue}=${green}=${yellow}=${red}=${blue}=${green}=${yellow}=${red}=${blue}=${green}=${yellow}=${red}=${blue}=${green}=${yellow}=${red}=${blue}=${green}=${yellow}=${red}=${blue}=${green}=${yellow}=${red}=${blue}=${white}]"
       echo -e "${white}[${yellow}             Thanks${white}             ]"
       echo -e "${white}[${green}=${yellow}=${red}=${blue}=${green}=${yellow}=${red}=${blue}=${green}=${yellow}=${red}=${blue}=${green}=${yellow}=${red}=${blue}=${green}=${yellow}=${red}=${blue}=${green}=${yellow}=${red}=${blue}=${green}=${yellow}=${red}=${blue}=${green}=${yellow}=${red}=${blue}=${white}]\n"
}

########
update
installpacket
Comman
End
