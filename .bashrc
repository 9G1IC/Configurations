
#~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
# If not running interactively, don't do anything
case $- in *i*) 
#exec tmux
    #*) return;;
esac
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac
# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt
# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -h --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
# some more ls aliases
alias ll='ls -alhF'
alias la='ls -Ah'
alias l='ls -CFh'
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then 
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
####################################################MY-SCRIPTS########################################################################
#Variables
export user="hope";
_doc="/media/$user/sda_Documents";
_mm="/media/$user/sda_Multimedia";
_sw="/media/$user/sda_Softwares";
MYSPACE="/media/hope/MySpace"
CRITICAL_WORK_SPACE="$MYSPACE/Critical_Workspace_Backup/Office_Workspace"
###Mount window drives
issl="/mnt/Windows"
tracker="$issl/Tracker/Satellite"
decoder="$issl/Decoder/Satellite"
project="$issl/Project/Satellite"
hope="$issl/Hope/Satellite"
#Subdirectories
bea_dir="$hope/Beacons"
voice_dir="$hope/Voice\ Contact"
pkt_dir="$hope/Packet"
sstv="$hope/SSTV"
#table_synch
tab_dir="noraa@wtab:/home/noraa/sd/"
tab_video="noraa@wtab:/home/noraa/sd/Multimedia/Videos/"
tab_music="noraa@wtab:/home/noraa/sd/Multimedia/MY_Music/"
tab_book="noraa@wtab:/home/noraa/sd/My_Documents/Books/"
v="setserial gqrx audacity fldigi SoDaServer gpredict axlisten socat watch SoDaRadio qjackctl pavucontrol paman soundmodem kissattach kissparams beacon jackd pulseaudio wireshark"
x=200;
y=200;
width=1500;
height=700;
pass="hope"
SW="$_sw/Sources"
tab_mnt_dir="/home/$user/mnt_tab";
##EXPORTS
export PATH=/home/$user/torch/install/bin:$PATH  # Added automatically by torch-dist
export LD_LIBRARY_PATH=/home/$user/torch/install/lib:$LD_LIBRARY_PATH  # Added automatically by torch-dist
export DYLD_LIBRARY_PATH=/home/$user/torch/install/lib:$DYLD_LIBRARY_PATH  # Added automatically by torch-dist
export PATH="$PATH:/usr/local/cuda-6.5/targets/x86_64-linux/lib/"

export PATH="/usr/local/cuda-7.0/bin:/home/hope/torch/install/bin:/home/hope/torch/install/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/java/jre1.7.0_75/bin:/usr/local/cuda-6.5/targets/x86_64-linux/lib/:/usr/local/cuda-6.5/targets/x86_64-linux/lib/"
export LD_LIBRARY_PATH="/usr/local/cuda-7.0/lib:/home/hope/torch/install/lib:/home/hope/torch/install/lib:/home/hope/torch/install/lib:"
export CUDA_ROOT="/usr/local/cuda-7.0/bin"
export GIT_EDITOR="/usr/bin/vim"


set -o vi
alias ebash="sudo vim ~/.bashrc"
alias c='clear'
alias q='exit'
alias h='sudo hibernate'
alias pwr='sudo shutdown -P 0'
alias rst='sudo shutdown -r 0'
alias p='cd -'
alias P='cd ..'
alias e='sudo vim $1'
alias i='sudo apt-get install $1'
alias u='sudo apt-get update'
alias sw="[ -d $SW] && cd $SW"
alias dl='cd ~/Downloads'
alias dc='cd ~/Documents'
alias pic='cd ~/Pictures'
alias pdf="[ -d $_doc/Books/pdfs ] && cd $_doc/Books/pdfs"
alias sc='cd ~/scripts/'
alias r='okular $1'
alias dt='cd ~/Desktop'
alias bk="[ -d $_doc/Books ] && cd $_doc/Books"
#Videos
alias vids="[ -d $_mm/Videos ] &&cd $_mm/Videos/"
#Music
alias muz="[ -d $_mm/Musics ] &&cd $_mm/Musics/"
#Documents
alias dc="[ -d $_doc ] &&cd $_doc/"
#Application
alias app="[ -d $_doc/Applications ] &&cd $_doc/Applications"
#Application Downloader
alias appdl="[ -d $_doc/Applications ] && sudo wget -c -P $_doc/Applications $1"
#ISSL
alias issl="[ -d /media/hope/ISSL ] && cd /media/hope/ISSL"
export ERL_LIBS="/usr/lib/erlang/lib"
#export PYTHONPATH="/usr/local/lib/python2.7/dist-packages"
###Default Installation
pkgs="make mysql-server sshfs tesseract-ocr tesseract-ocr-dev ssmtp lynx w3m xpdf pulseaudio-module-jack zita-ajbridge pavucontrol pavumeter a2jmidid libboost-all-dev vlc-plugin-jack pacman openssh-* okular vim audacity cifs-utils youtube-dl jack synaptic gnuradio gdm wmctrl socat soundmodem wireshark fldigi gpredict qjackctl vlc screen gparted hibernate smartmontools"
alias ipkgs="sudo apt-get install $pkgs"
#Mount 
alias mntdecoder="sudo mount -t cifs //issl-pc/d/ $decoder/.. -o username=hope,password=hope,ip=192.168.10.5,dir_mode=0755,file_mode=0755"
alias mnttracker="sudo mount -t cifs //Test-pc/d/ $tracker/.. -o username=hope,password=hope,ip=192.168.10.4,dir_mode=0755,file_mode=0755"
alias mntprj="sudo mount -t cifs //issl-pc/d/ $project/.. -o username=hope,password=hope,ip=192.168.10.3,dir_mode=0755,file_mode=0755"
alias mntall='mntprj;mnttracker;mntdecoder;'
#ls directories
alias lstracker="ls $tracker"
alias lsdecoder="ls $decoder"
alias lsprj="ls $project"
#Unmount directories
alias umnttracker="sudo umount $tracker"
alias umntdecoder="sudo umount $decoder"
alias umntprj="sudo umount $project"
alias umntall='umntprj; umntdecoder; umnttracker;'
#Cd to directories
alias cdtracker="cd $tracker"
alias cddecoder="cd $decoder"
alias cdprj="cd $project"
###Synchronize
alias syncbeacon="sudo -S rsync -rv $bea_dir $decoder <<< $pass & sudo -S rsync -rv $bea_dir $tracker <<< $pass & sudo -S rsync -rv $bea_dir $project <<< $pass &";
alias syncvoice="sudo -S rsync -rv $voice_dir $decoder <<< $pass & sudo -S rsync -rv $voice_dir $tracker <<< $pass & sudo -S rsync -rv $voice_dir $project <<< $pass &";
alias syncpkt="sudo -S rsync -rv $pkt_dir $decoder <<< $pass & ; sudo -S rsync -rv $pkt_dir $tracker <<< $pass & ;sudo -S rsync -rv  $pkt_dir $project <<< $pass & ";
alias syncsstv="sudo -S rsync -rv $sstv_dir $decoder <<< $pass & ; sudo -S rsync -rv $sstv_dir $tracker <<< $pass & ;sudo -S rsync -rv  $sstv_dir $project <<< $pass & ";
alias syncall="syncbeacon syncvoice syncpkt syncsstv ";
#make
alias m="sudo make && sudo make install"
#cd desktop
alias dt="cd /home/$user/Desktop"
#youtube-dl
alias yt="dt && youtube-dl -t $1 && q"
alias tab_synch="sudo rsync --progress --rsh=ssh '$1' $tab_dir"
#cd to softwares
alias sw="cd /media/$user/sda_Softwares/"
#mount my tab
alias mnt_tab="sudo sshfs noraa@wtab: $tab_mnt_dir -o allow_other -o follow_symlinks"
#unmount my tab
alias umnt_tab="sudo umount $tab_mnt_dir"
#Robot
robot(){
src="/media/$user/sda_Softwares/codes/robotic_arm_driver-master/examples/gui/"
md="/media/$user/sda_Softwares/codes/robotic_arm_driver-master/"
mod=$(lsmod | grep -o robotic_arm)
n="robotic_arm"
#if module is loaded, the run the python script
if [[ $mod == $n ]]; then
echo "Running robot script!!!";
sudo python $src"robot.py";
else
#else load the module or run make and run the python script
echo "Could not find robotic_arm module!!!"
sudo  insmod $md"robotic_arm.ko" || make $md &&  sudo insmod $md"robotic_arm.ko" && sudo  python $src"robot.py"
fi

}

#Camera
camera_back(){
if [ -z $1 ];then
echo "Please provide a destination 'Yankey' or 'Precious' !!!"
else
{
src="/media/$user/Camera/$1/"
dst="/media/$user/ISSL/Office/Camera/$1/"
rst=$(date +"%Y%m%d");
log="/home/$user/.log/issl/CameraBackup.txt"
append="";
#Rename 2013 folders
[ -d $src"20130101" ] && echo "Renaming 20130101 folder to 20130101_$rst" && mv $src"20130101" $src"20130101_"$rst
#List files except todays directory
for l in $(ls -I $rst $src); do
{
#Compare source with destination files 
 for d in $(ls $dst); do
{
#if there exists a copy of the directory at the destination, rename it.
if [ $l == $d ]; then
#Prompt user
echo -e "Duplicates :: Source: $l \t Destination: $d"
#declare a new renaming variable
_rst=$(date +"%H%M%S")
_l=$src$l$_rst
#Rename duplicate
mv -n -u  $src$l $_l
#update the value of l
l=$_l
fi
};done
#Move files 
echo -e "Moving $l \n"
mv -n -u $src$l $dst && echo "Backed Up Camera Yankey on $(date)" >> $log
};done 

#exit;
}
fi
}




#
# GROUNDSTATION CONFIGURATION
#

###Function to search for strings in files using grep
alias mfind=' grep -r . -e $1'
##Variables
###TNC
alias tnc="(sudo -S soundmodem <<< $pass &) &&  sleep 1 && sudo -S kissattach /dev/soundmodem0 sm0 192.168.2.1 <<< $pass sleep 1 && sudo -S kissparms -p sm0 -f y -r 128 -s 3 -t 50 <<< $pass && sleep 1; sudo -S killall kissattach <<< $pass && sleep 2 && sudo -S axlisten -trac ax0 <<< $pass"
###Beacon
alias bea='watch -n 5 beacon -c 9G2AA -d CQ -s sm0 "$1"'
###USRP
alias usrp='`qjackctl & ``pavucontrol &`'
###Kill running grounnd station processes
alias gsclean='sudo -S killall $v <<< $pass;  q '
###Startup all
alias gs='tnc & usrp & ' 
###Misc
alias misc='sudo -S wireshark <<< $pass & `jackeq`'
###Layout
alias layout=" wmctrl -r SoDa Radio -e 0,$x,$y,$width,$height & wmctrl -r SoDa Radio -t 1 &  wmctrl -r GPREDICT -e 0,$x,$y,$width,$height & wmctrl -r GPREDICT -t 2 &  wmctrl -r Volume Control -e 0,$x,$y,$width,$height & wmctrl -r Volume Control -t 3 & wmctrl -r connections -e 0,$x,$y,$width,$height &  wmctrl -r connections -t 4 & wmctrl -r beacon -t 4 & wmctrl -r Messages -t 4 & wmctrl -r Remmina -t 5 & wmctrl -r audacity -b add,fullscreen & wmctrl -r audacity -t 6 & wmctrl -r fldigi -b add,fullscreen & wmctrl -r fldigi -t 7" 
###Latch Control to windows
alias latch="wmctrl -r Radio Control -b add,sticky; wmctrl -r Rotator Control -b add,sticky;"
###Unlatch
alias unlatch="wmctrl -r Radio Control -b remove,sticky; wmctrl -r Rotator Control -b remove,sticky;"
###Tuner
alias tuner='socat -vvv TCP-LISTEN:4532 UNIX-CONNECT:/tmp/SoDa_tracker & '
##Document
alias doc='audacity & sleep 1; fldigi &'
##Feedback
alias fdbk="sudo -S rmmod dvb_usb_rtl28xxu <<< $pass && gqrx || gqrx"
###Soda
alias soda="tuner sudo -S gpredict <<< $pass & SoDaRadio --with-tracking & doc fdbk pavucontrol "
##EXPORT MENU
export UBUNTU_MENUPROXY=0;
##Install 
alias soda_install="./configure --with-boost-libdir=/usr/lib/x86_64-linux-gnu/ && m && make clean"
###AX.25 TX
alias tax="[ -d $_doc/Applications ] && bash $_doc/Applications/TAX.25.sh"
###Update brainwaves-pc
alias ubash="sudo -S scp /home/$user/.bashrc brainwaves@bw:/home/brainwaves/ <<< $pass"
###Connect of GS232B
alias rotor="sudo setserial ${GS232B} baud_base 115200 && sudo screen $GS232B"
###Connect to rotctl
alias rotor_ctl="sudo rotctld -m 603 -r ${GS232B} -t 4534 -vvvv"
###Refresh
alias refresh="source ~/.bashrc"
##ssh to my tablet
alias ssh_tab="ssh -X noraa@wtab"
##TEST
alias gstest="tuner gpredict & SoDaRadio --with-tracking & fdbk & rotor_ctl"
##Synch my vimrc and .vim
alias vimsync="rsync --rsh=ssh --progress -r ~/.vim ~/.vimrc noraa@wtab:/home/noraa &"
##Move me to my critical workshop
alias work="pushd . && cd $CRITICAL_WORK_SPACE"
work

alias rm="rm -I"
setxkbmap -layout us -option caps:swapescape
