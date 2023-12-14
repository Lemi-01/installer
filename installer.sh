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
	echo "neofetch, lolcat, cowsay, appimagelauncher, discord, betterdiscordctl, brave-bin, mullvad-vpn, opentabletdriver, osu-lazer, prismlauncher, protonup-qt, protontricks, qbittorrent, ttf-firacode-nerd, steam, btop, lutris, winetricks, giflib, lib32-giflib, libpng, lib32-libpng, libldap, lib32-libldap, gnutls, lib32-gnutls, mpg123, lib32-mpg123, openal, lib32-openal, v4l-utils, lib32-v4l-utils, libpulse, lib32-libpulse, alsa-plugins, lib32-alsa-plugins, alsa-lib, lib32-alsa-lib, libjpeg-turbo, lib32-libjpeg-turbo, libxcomposite, lib32-libxcomposite, libxinerama, lib32-libxinerama ncurses, lib32-ncurses, opencl-icd-loader, lib32-opencl-icd-loader, libxslt, lib32-libxslt, libva, lib32-libva, gtk3 lib32-gtk3, gst-plugins-base-libs, lib32-gst-plugins-base-libs, vulkan-icd-loader, lib32-vulkan-icd-loader, cups, samba, dosbox"
	pause
        yay -Syyu neofetch lolcat cowsay appimagelauncher discord betterdiscordctl brave-bin mullvad-vpn opentabletdriver osu-lazer prismlauncher protonup-qt protontricks qbittorrent ttf-firacode-nerd steam btop lutris winetricks giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo libxcomposite lib32-libxcomposite libxinerama lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader cups samba dosbox --noconfirm --sudoloop
}
 
# do something in two()
two(){
	echo "Installing YAY"
        sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si --noconfirm
}
 
# do something in three()
three(){
	echo "Copying DOTS [ONLY TESTED ON GNOME]"
	pause
        gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
        git clone https://github.com/Lemi-01/installer.git /home/lemi01/Pictures/installer
        cp /home/$USER/Pictures/installer/dots/wallpaper.png /home/$USER/Pictures/wallpaper.png
        cp /home/$USER/Pictures/installer/dots/neofetch/config.conf /home/$USER/.config/neofetch/config.conf
        rm -Rf /home/$USER/Pictures/installer/
        gsettings set org.gnome.desktop.background picture-uri-dark file:///home/$USER/Pictures/wallpaper.png
        clear
        echo "installing Extension Manager [FLATHUB]"
        pause
        sudo pacman -S flatpak --noconfirm
	flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
	flatpak install flathub com.mattjakeman.ExtensionManager
 	flatpak run com.mattjakeman.ExtensionManager
	clear
	echo "My suggestion of extensions:"
	echo "1.Blur My Shell"
	echo "2.Dash To Dock"
	echo "3.Extension List"
	echo "4.Just Perfection"
	echo "5.Tray Icons Reloaded"
	echo "6.User Themes"
	echo "Because i can't set the settings for these automatically, install them now on Extension Manager that i just installed for you."
}
 
# function to display menus
show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	echo " M A I N - M E N U"
	echo "~~~~~~~~~~~~~~~~~~~~~"
	echo "1. Install With YAY"
	echo "2. Install Only YAY"
	echo "3. Dark Gnome/Wallpaper and Neofetch conf+Extension Manager (FLATHUB)"
	echo "4. EXIT"
}
# read input from the keyboard and take a action
# invoke the one() when the user select 1 from the menu option.
# invoke the two() when the user select 2 from the menu option.
# Exit when user the user select 3 form the menu option.
read_options(){
	local choice
	read -p "Enter choice [ 1 - 4] " choice
	case $choice in
		1) one ;;
		2) two ;;
		3) three ;;
		4) exit 0;;
		*) echo -e "${RED}R U Dumb?${STD}" && sleep 2
	esac
}
 
# -----------------------------------
# Step #4: Main logic - infinite loop
# ------------------------------------
while true
do
 
	show_menus
	read_options
done
