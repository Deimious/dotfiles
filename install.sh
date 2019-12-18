#!/bin/bash

# check for yay - the aur helper


# get some installed programs
install_these=""

# programs to install with pacman
calcurse=$(pacman -Qn | grep "firefox")
dolphin=$(pacman -Qn | grep "firefox")
firefox=$(pacman -Qn | grep "firefox")
kid3=$(pacman -Qn | grep "kid3")
mpd=$(pacman -Qn | grep "firefox")
ncmpcpp=$(pacman -Qn | grep "firefox")
qutebrowser=$(pacman -Qn | grep "firefox")
ranger=$(pacman -Qn | grep "firefox")
transmission=$(pacman -Qn | grep "transmission")
xarchiver=$(pacman -Qn | grep "xarchiver")

# git repositories that we want to install
dwm=$(ls /home/$USER/.config/ | grep "dwm")
st=$(ls /home/$USER/.config/ | grep "st")
slock=$(ls /home/$USER/.config/ | grep "slock")
dmenu=$(ls /home/$USER/.config/ | grep "dmenu")
surf=$(ls /home/$USER/.config/ | grep "surf")

# if each of the package queries above are missing,
# add them to a big string of these packages to install with pacman
if [ "$calcurse" == "" ]; then install_these="calcurse ${install_these}"; fi
if [ "$dolphin" == "" ]; then install_these="dolphin ${install_these}"; fi
if [ "$firefox" == "" ]; then install_these="firefox ${install_these}"; fi
if [ "$kid3" == "" ]; then install_these="kid3 ${install_these}"; fi
if [ "$mpd" == "" ]; then install_these="mpd ${install_these}"; fi
if [ "$ncmpcpp" == "" ]; then install_these="ncmpcpp ${install_these}"; fi
if [ "$qutebrowser" == "" ]; then install_these="qutebrowser ${install_these}"; fi
if [ "$ranger" == "" ]; then install_these="ranger ${install_these}"; fi
if [ "$transmission" == "" ]; then install_these="transmission ${install_these}"; fi
if [ "$xarchiver" == "" ]; then install_these="xarchiver ${install_these}"; fi

# it's best to do each git clone by themselves, no real
# way I know to do it in one go
# maybe make it into a loop for the suckless utilities,
# since they follow an install path pattern?
if [ "$dwm" == "" ]; then git clone https://git.suckless.org/dwm /home/$USER/.config/dwm/; fi
if [ "$st" == "" ]; then git clone https://git.suckless.org/st /home/$USER/.config/st/; fi
if [ "$slock" == "" ]; then git clone https://git.suckless.org/slock /home/$USER/.config/slock/; fi
if [ "$dmenu" == "" ]; then git clone https://git.suckless.org/dmenu /home/$USER/.config/dmenu/; fi
if [ "$surf" == "" ]; then git clone https://git.suckless.org/surf /home/$USER/.config/surf/; fi

# run that big pacman install line without confirmations
if [ $install_these != "" ]; then
    echo $(sudo pacman -Syu --noconfirm $install_these)
fi
