#!/bin/bash
function pause(){
 read -s -n 1 -p "Press any key to continue . . ."
 echo ""
}
read -r -d '' BANNER << EOF

┬  ┌─┐┌┬┐┬  ┬┌┐┌┌─┐┌┬┐┌─┐┬  ┬  ┌─┐┬─┐
│  ├┤ ││││  ││││└─┐ │ ├─┤│  │  ├┤ ├┬┘
┴─┘└─┘┴ ┴┴  ┴┘└┘└─┘ ┴ ┴ ┴┴─┘┴─┘└─┘┴└─

EOF
clear
echo -e "$BANNER"
pause 
# A menu driven shell script sample template 
## ----------------------------------
# Step #1: Define variables
# ----------------------------------
EDITOR=vim
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'
 
# ----------------------------------
# Step #2: User defined function
# ----------------------------------
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}

one(){
	echo
	echo "Installing following programs:"
	echo "(Including Wine dependency hell)"
	echo
	echo "neofetch, lolcat, cowsay, appimagelauncher, discord, betterdiscordctl, brave-bin, mullvad-vpn, opentabletdriver, osu-lazer, prismlauncher, protonup-qt, protontricks, qbittorrent, ttf-firacode-nerd, steam, btop, lutris, wine-staging, winetricks, giflib, lib32-giflib, libpng, lib32-libpng, libldap, lib32-libldap, gnutls, lib32-gnutls, mpg123, lib32-mpg123, openal, lib32-openal, v4l-utils, lib32-v4l-utils, libpulse, lib32-libpulse, alsa-plugins, lib32-alsa-plugins, alsa-lib, lib32-alsa-lib, libjpeg-turbo, lib32-libjpeg-turbo, libxcomposite, lib32-libxcomposite, libxinerama, lib32-libxinerama ncurses, lib32-ncurses, opencl-icd-loader, lib32-opencl-icd-loader, libxslt, lib32-libxslt, libva, lib32-libva, gtk3 lib32-gtk3, gst-plugins-base-libs, lib32-gst-plugins-base-libs, vulkan-icd-loader, lib32-vulkan-icd-loader, cups, samba, dosbox"
	pause
        yay -Syyu neofetch lolcat cowsay appimagelauncher discord betterdiscordctl brave-bin mullvad-vpn opentabletdriver osu-lazer prismlauncher protonup-qt protontricks qbittorrent ttf-firacode-nerd steam btop lutris wine-staging winetricks giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo libxcomposite lib32-libxcomposite libxinerama lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader cups samba dosbox --noconfirm --sudoloop
}
 
# do something in two()
two(){
	echo "Installing YAY"
        sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si --noconfirm
}
 
# function to display menus
show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	echo " M A I N - M E N U"
	echo "~~~~~~~~~~~~~~~~~~~~~"
	echo "1. Install With YAY"
	echo "2. Install Only YAY"
	echo "3. EXIT"
}
# read input from the keyboard and take a action
# invoke the one() when the user select 1 from the menu option.
# invoke the two() when the user select 2 from the menu option.
# Exit when user the user select 3 form the menu option.
read_options(){
	local choice
	read -p "Enter choice [ 1 - 3] " choice
	case $choice in
		1) one ;;
		2) two ;;
		3) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
 
# ----------------------------------------------
# Step #3: Trap CTRL+C, CTRL+Z and quit singles
# ----------------------------------------------
trap '' SIGINT SIGQUIT SIGTSTP
 
# -----------------------------------
# Step #4: Main logic - infinite loop
# ------------------------------------
while true
do
 
	show_menus
	read_options
done
