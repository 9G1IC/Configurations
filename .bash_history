tail --help
c
tail --help | less
tail -f -n 50 2_1.txt 
c
tail -f -n 50 2.2.txt 
c
tail -f -n 50 1.2.txt 
c
ls
textcleaner -g -u -o 50 -f 90 -s 50 -e stretch -t 25 3.jpeg out3.jpeg
textcleaner -g -u -o 50 -f 90 -s 50 -e stretch -t 1 3.jpeg out3.jpeg
textcleaner -g -u -o 50 -f 90 -s 50 -e stretch 3.jpeg out3.jpeg
textcleaner -g -u -o 50 -f 10 -s 50 -e stretch 3.jpeg out3.jpeg
c
textcleaner -g -u -o 50 -e stretch 3.jpeg out3.jpeg
c
tesseract 3.jpeg out3 -psm 6
c
ls
less out3.txt 
c
cd
vim .tmux.conf 
q
tesseract 2.jpeg 2.txt
c
ls
tesseract -h
tesseract 2.jpeg 2 -psm 0
ls
tesseract 2.jpeg 2 -psm 1
c
tesseract 2_1.jpeg 2_1 -psm 1
less 2_1.txt 
tesseract 2_1.jpeg 2_1 -psm 6
less 2_1.txt 
tesseract 2_1.jpeg 2_1 -psm 2
tesseract 2_1.jpeg 2_1 -psm 4
tesseract 2_1.jpeg 2_1 -psm 5
tesseract 2.2.jpeg 2_1 -psm 3
less 2_1.txt 
c
tesseract 2_1.jpeg 2.2 -psm 5
cat 2.2.txt 
c
tesseract 2.2.jpeg 2.2 -psm 3
less 2.2.txt 
c
tesseract 1.jpeg  -psm 3
tesseract 1.jpeg 1 -psm 3
c
ls
less 1.txt 
tesseract Screenshot\ from\ 2015-04-25\ 12\:59\:17.png 1.1 -psm 3
c
ks
c
less 1.1.txt 
c
tesseract Screenshot\ from\ 2015-04-25\ 12\:59\:17.png 1.2 -psm 2
tesseract Screenshot\ from\ 2015-04-25\ 12\:59\:17.png 1.2 -psm 6
c
ls
less 1.2.txt 
tesseract xcreenshot\ from\ 2015-04-25\ 12\:59\:17.png 1.2 -psm 6
c
man diff
diff -y 1.2.txt 1.2\ (copy).txt
diff -y 1.2.txt 1.2\ \(copy\).txt
c
tesseract xcreenshot\ from\ 2015-04-25\ 12\:59\:17.png 1.2 -psm 6 -psm 3
tesseract xcreenshot\ from\ 2015-04-25\ 12\:59\:17.png 1.2 -psm 6
tesseract xcreenshot\ from\ 2015-04-25\ 12\:59\:17.png 1.2 -psm 5
tesseract xcreenshot\ from\ 2015-04-25\ 12\:59\:17.png 1.2 -psm 10
tesseract xcreenshot\ from\ 2015-04-25\ 12\:59\:17.png 1.2 -psm 9
tesseract xcreenshot\ from\ 2015-04-25\ 12\:59\:17.png 1.2 -psm 6
c
diff -y 1.2.txt 1.2\ \(copy\).txt
tesseract xcreenshot\ from\ 2015-04-25\ 12\:59\:17.png 1.2 -psm 6
c
diff -y 1.2.txt 1.2\ \(copy\).txt
c
ls
c
textcleaner -g -e stretch -u -f 20 -s 1.1.jpeg tc.jpeg
c
textcleaner -g -e stretch -u -f 20 -s 1 1.1.jpeg tc.jpeg
textcleaner -g -e stretch -u -f 30 -s 10 1.1.jpeg tc.jpeg
textcleaner -g -e stretch -e normalize -u -f 30 -s 10 1.1.jpeg tc.jpeg
textcleaner -g -o 10 -e stretch -e normalize -u -f 30 -s 10 1.1.jpeg tc.jpeg
tesseract tc.jpeg tc -psm 6
c
less tc.txt 
diff tc.txt 1.2\ \(copy\).txt 
c
diff -y tc.txt 1.2\ \(copy\).txt 
diff -y tc.txt 1.2\ \(copy\).txt  | less
c
textcleaner -g -o 5 -e stretch -e normalize -u -f 30 -s 10 1.1.jpeg tc1.jpeg
c
textcleaner -g -o 50 -e stretch -e normalize -u -f 30 -s 10 1.1.jpeg tc1.jpeg
textcleaner -g -o 500 -e stretch -e normalize -u -f 30 -s 10 1.1.jpeg tc2.jpeg
textcleaner -g -o 100 -e stretch -e normalize -u -f 30 -s 10 1.1.jpeg tc2.jpeg
textcleaner -g -o 75 -e stretch -e normalize -u -f 30 -s 10 1.1.jpeg tc2.jpeg
textcleaner -g -o 20 -e stretch -e normalize -u -f 50 -s 10 1.1.jpeg tc2.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 10 1.1.jpeg tc2.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 10 -t 100  1.1.jpeg tc3.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 10 -t 10  1.1.jpeg tc3.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 10 -t 30  1.1.jpeg tc5.jpeg
tesseract tc4.jpeg tc4 -psm 6
c
less tc4.txt 
tesseract tc4.jpeg tc4 -psm 3
less tc4.txt 
tesseract tc4.jpeg tc4 -psm 5
less tc4.txt 
tesseract tc4.jpeg tc4 -psm 6
less tc4.txt 
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 10 -t 40  1.1.jpeg tc5.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 20 -t 40  1.1.jpeg tc5.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 20 -t 25  1.1.jpeg tc5.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 20 -t 20  1.1.jpeg tc5.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 20 -t 20  1.jpeg tc6.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 20 -t 30  1.jpeg tc6.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 20 -t 50  1.jpeg tc7.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 20 -t 45  1.jpeg tc7.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 20 -t 35  1.jpeg tc7.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 20 -t 40  1.jpeg tc7.jpeg
tesseract tc7.jpeg tc7 -psm 6
c
less tc7.txt 
c
textcleaner -g -o 50 -e stretch -e normalize -u -f 55 -s 25 -t 40  1.jpeg tc7.jpeg
c
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 10 -t 30  xcreenshot\ from\ 2015-04-25\ 12\:59\:17.png tc5.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 10 -t 25  xcreenshot\ from\ 2015-04-25\ 12\:59\:17.png tc5.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 50 -s 20 -t 10  xcreenshot\ from\ 2015-04-25\ 12\:59\:17.png tc5.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 40 -s 20 -t 5  xcreenshot\ from\ 2015-04-25\ 12\:59\:17.png tc5.jpeg
textcleaner -g -o 50 -e stretch -e normalize -u -f 40 -s 30 -t 5  xcreenshot\ from\ 2015-04-25\ 12\:59\:17.png tc5.jpeg
tesseract tc5.jpeg tc5 -psc 6
tesseract tc5.jpeg tc5 -psm 6
tesseract tc4.jpeg tc4 -psm 6
c
man -k magic

man -k image
man -k image | less
cat /usr/local/bin/textcleaner 
less /usr/local/bin/textcleaner 
c
ls
textcleaner -g -o 50 -e stretch -u -f 50 -s 50 1.1.jpeg out.jpeg
textcleaner -g -o 50 -e stretch -u -f 55 -s 50 1.1.jpeg out.jpeg
textcleaner -g -o 50 -e stretch -u -f 50 -s 50 -t 10 1.1.jpeg out.jpeg
textcleaner -g -o 50 -e stretch -u -f 60 -s 50 1.1.jpeg out.jpeg
textcleaner -g -o 50 -e stretch -u -f 70 -s 50 1.1.jpeg out.jpeg
textcleaner -g -o 50 -e stretch -u -f 90 -s 50 1.1.jpeg out.jpeg
textcleaner -g -o 50 -e stretch -u -f 90 -s 50 -t 5 1.1.jpeg out.jpeg
tesseract out.jpeg out -psm 6
less out.txt 
textcleaner -g -o 50 -e stretch -u -f 90 -s 50 -t 50 1.1.jpeg out.jpeg
textcleaner -g -o 50 -e stretch -u -f 90 -s 50 -t 25 1.1.jpeg out.jpeg
textcleaner -g -o 50 -e stretch -u -f 90 -s 50 -t 20 1.1.jpeg out1.jpeg
tesseract out1.jpeg out1 -psm 6
less out1.txt 
diff -y  out1.txt out.txt 
diff -y  out1.txt out.txt | less
diff -y  tc4.txt out.txt | less
c
vim out1.txt 
c
ls $MYSPACE/
c
ebash
c
ls /media/hope/MySpace/Critical_Workspace_Backup/
c
xpdf ImageMagick.pdf 
c
ls
textcleaner -g -u -o 50 -f 90 -s 50 -t 25 -e stretch 2.jpeg out2.jpeg
textcleaner -g -u -o 50 -f 90 -s 60 -t 35 -e stretch 2.jpeg out2.jpeg
tesseract out2.jpeg out2.txt -psm 6
less out2.txt.txt 
c
ls
tesseract out2.jpeg out2 -psm 6
vim out2.txt
c
textcleaner -g -u -o 50 -f 90 -s 60 -t 35 -e stretch 3.jpeg out3.jpeg
textcleaner -g -u -o 50 -f 90 -s 60 -t 10 -e stretch -T out3.jpeg out3_1.jpeg
man tmux
q
c
ls
cd
ls
vim Mission_Statment_Analysis.txt 
x
qa
q
man tmux
vim .tmux.conf 
q
tmux 
q
vim .tmux.conf 
t
q
vim /home/hope/mnt_tab/sd/My_Documents/Books/ALL_VIM_TIPS.txt 
q
tmux
q
tmux
q
ls
c
tesseract -h
tesseract 1.jpeg 
tesseract 1.jpeg 1.txt
c
wget http://fovekoqidubo.sayfasi.net/2015/02/25/definitive-guide-imagemagick-definitive-guide-pdf
c
wget http://bullard.esc.cam.ac.uk/~taylor/Doc/imagemagick/docs/ImageMagick.pdf
mnt_tab 
c
ls
cp ImageMagick.pdf $tab_book 
cp ImageMagick.pdf /home/hope/mnt_tab/sd/My_Documents/Books/
wget https://docs.google.com/viewerng/viewer?url=http://eduunix.ccut.edu.cn/index2/pdf/Packt.Publishing.ImageMagick.Tricks.Web.Image.Effects.from.the.Command.Line.and.PHP.Jun.2006.pdf
ls
rm viewer\?url=http\:%2F%2Feduunix.ccut.edu.cn%2Findex2%2Fpdf%2FPackt.Publishing.ImageMagick.Tricks.Web.Image.Effects.from.the.Command.Line.and.PHP.Jun.2006.pdf 
c
ls
c
cd $tab_mnt_dir
cls
cd sd/My_Documents/
find . -iname *vim*
vim ./Books/ALL_VIM_TIPS.txt 
v
c
virtualbox 
q
tmux a
q
vim Mission_Statment_Analysis.txt 
c
vim .tmux.conf 
q
tmux
q
vim .tmux.conf 
c
dt
c
ls
c
tesseract out3.jpeg out3
tesseract out3.jpeg out3 -psm 6
c
less out3.txt 
c
vim out3.txt 
ls
rm *txt *jpg
rm *txt *jpeg
c
rm *png
q
cd /media/hope/MySpace/Critical_Workspace_Backup/
c
ls
git branch 
git checkout Configs/Office 
git checkout -b Configs/Office 
git branch 
git add .
c
ls
git status
git commit -m "in cominggit status Adding my critical files $(date)
"
git push -h
git push -u
git push -u Configs
git push Configs
c
git log
c
ls
git status
git commit -a
git push Configs 
git config --global push.default matching
git push
git push Configs 
git push https://github.com/9G1IC/Configurations.git
c
git branch
ls
git add *
git status
git commit -a
c
git push
git push Configs 
git remote 
git push Configs Configs/HEAD 
git push Configs remotes/Configs/Office 
git push origin heads/Configs/Office 
git push master heads/Configs/Office 
git push Configs  heads/Configs/Office 
c
git checkout heads/Configs/Office 
git branch 
git checkout Configs/Office 
c
git branch 
git add *
git status
git commit -a -m "Still trying"
git push Configs Configs/master 
git status
git log
git log Configs/master 
q
vim Mission_Statment_Analysis.txt 
q
i aptitude
sudo aptitude
c
sudo synaptic
q
aptitude install debianutils cmake    libxml2-dev    libebook1.2-dev    libedata-book1.2-dev    libedata-cal1.2-dev    libedataserver1.2-dev    libedataserverui1.2-dev    evolution-data-server-dev
sudo aptitude install debianutils cmake    libxml2-dev    libebook1.2-dev    libedata-book1.2-dev    libedata-cal1.2-dev    libedataserver1.2-dev    libedataserverui1.2-dev    evolution-data-server-dev
c
sudo barrydesktop 
c
q
vim .tmux.conf 
c
sw
cd Sources/
c
wget http://www.progweb.com/modules/blackberry/data/debian.tar.gz
tar -zxvf debian.tar.gz 
c
ls
cd opensync/
ls
cd debian/
ls
cd ../..
sudo mv opensync/ /usr/local/src/
cd /usr/local/src/
c
cd opensync/debian/
c
./rules binary
sudo ./rules binary
cd ..
c
ls
debian/rules binary
sudo debian/rules binary
ls
sw
p
pusd .
pushd .
c
ls
sw
cd Sources/
tar -zvxf debian.tar.gz -C /usr/local/src/
sudo tar -zvxf debian.tar.gz -C /usr/local/src/
c
cd $(popd)
ls ../
ls
debian/rules binary
vim debian/rules 
dpkg -i libopensync1exp5_0.40_amd64.deb libopensync1exp5-dev_0.40_amd64.deb opensyncutils_0.40_amd64.deb 
sudo dpkg -i libopensync1exp5_0.40_amd64.deb libopensync1exp5-dev_0.40_amd64.deb opensyncutils_0.40_amd64.deb 
ls
cd ..
ls
cd osynctool/
ls
debian/rules binary
sudo debian/rules binary
cd ../opensync/
l
c
cd debian/
ls
./rules binary
less README.Debian 
cd ..
sudo debian/rules 
cd ..
opensync/debian/rules binary
p
c
kls
c
ks
c
ls
vim debian/rules 
c
debian/rules binary
cmake
c
git clone dpkg -i libopensync1exp5_0.40_amd64.deb libopensync1exp5-dev_0.40_amd64.deb opensyncutils_0.40_amd64.deb 
ls
mkdir build
cd build/
sudo cmake cmake -DCMAKE_INSTALL_PREFIX="/usr/local" /usr/local/src/opensync/opensync
cd ..
sudo cmake cmake -DCMAKE_INSTALL_PREFIX="/usr/local" /usr/local/src/opensync/opensync
sudo cmake cmake -DCMAKE_INSTALL_PREFIX="/usr/local" /usr/local/src/opensync
c
mkdir opensync
cd build/
sudo cmake -DCMAKE_INSTALL_PREFIX="/usr/local" /usr/local/src/opensync/opensync
ls
cd ..
ls
mkdir opensync.
sudo mkdir opensync.
mv opensync/ opensync.
sudo mv opensync/ opensync.
ls
mv evolution/ osynctool/ vformat/ opensync.
sudo mv evolution/ osynctool/ vformat/ opensync.
ls
mv opensync./ opensync
sudo mv opensync./ opensync
c
su -
dt
dl
ls
mv multisync-gui_0.90.14-1_i386.deb $SW
sw
ls
cd Sources/
ls
sudo dpkg -i multisync-gui_0.90.14-1_i386.deb 
sudo synaptich
sudo synaptic
sudo dpkg --configure
c
ls
sudo dpkg-checkbuilddeps multisync-gui_0.90.14-1_i386.deb 
sudo dpkg-depcheck multisync-gui_0.90.14-1_i386.deb 
man dpkg-depcheck 
c
barrybackup 
q
tmux
tmux new Main
tmux Main
tmux a
tmux 
q
umnt_tab 
q
pwr
mnt_tab
c
ebash
q
ifconfig
c
q
ifconfig
c
ifconfig -i brainwaves
ifconfig brainwaves
ifconfig
c
ifconfig brainwavesVPN0
c
dl
ls
wget -c http://www.openssl.org/source/openssl-1.0.2a.tar.gz
wget -C http://www.openssl.org/source/openssl-1.0.2a.tar.gz
wget -c http://www.openssl.org/source/openssl-1.0.2a.tar.gz -o openssl-1.0.2a.tar.gz.part 
wget -c http://www.openssl.org/source/openssl-1.0.2a.tar.gz -O openssl-1.0.2a.tar.gz.part 
c
ebash
vim ~/.vimrc 
c
work
ls
q
ssh _T git@github.com
ssh -T git@github.com
ssh
ssh git@github.com
ssh noraa@wtab
c
ssh-agent 
c
ls
q
work
ls
git checkout Configs 
ls
ll
rm Office 
ls
c
git merge https://github.com/9G1IC/Configurations
c
git remote 
git remote show
git remote add remote_configs https://github.com/9G1IC/Configurations
git branch -v
git branch -r
git branch 
git push remote_configs Office
git fetch remote_configs 
ls
c
ls
git branch 
git branch -v
git branch -r
git checkout Office 
ls
ll
c
ls
git branch 
git branch -r
git merge remote_configs/Configs/Office 
ll
c
ll
c
ls
c
l
git merge remote_configs/Configs/Office 
git branch remote_configs/Configs/Office --merged 
git branch remote_configs/Configs/Office -d
git branch -d remote_configs/Configs/Office 
c
ls
git branch 
ls
c
ll
git ls
git log
git status 
c
git checkout -h
git branch -h
git branch -D remote_configs/Configs/Office 
git branch -D remote_configs/Configs
c
ls
touch very_new.txt
git push remote_configs remote_configs/Office 
c
git push remote_configs Office 
c
ls
git add very_new.txt 
git commit -m "Trying"
git push remote_configs Office 
git remote add ssh_remote_configs git@github.com:9G1IC/Configurations.git
git push ssh_remote_configs Office 
sudo git push ssh_remote_configs Office 
c
ls
c
git push ssh_remote_configs Office 
c
ls
git remote show
git remote remove ssh_remote_configs 
git remote set-url git@github.com:9G1IC/Configurations.git
git remote set-url remote_configs git@github.com:9G1IC/Configurations.git
c
git push remote_configs Office 
c
ls
c
ssh-keygen -h
ssh-keygen -t rsa -C "aaronyan2001@gmail.com"
c
ls ~/.ssh
cat ~/.ssh/id_rsa.pub 
c
ssh-keygen -t rsa -C "aaronyan2001@gmail.com"
mysql -u root -p
c
ssh-keygen -t rsa -C "aaronyan2001@gmail.com"
c
ssh-agent 
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub 
ssh -T git@github.com
ssh git@github.com
ping github.com
ssh git@github.com
ssh me@192.30.252.129
c
ssh me@192.30.252.19
c
ssh git@github.com
sudo ssh git@github.com
ssh_tab 
v
c
ls
git 
c
git remote set-url remote_configs https://github.com/9G1IC/Configurations.git
c
git push remote_configs Office 
c
q
work
c
ls
vim very_new.txt 
q
work
ls
vim Organisations.txt 
q
cd $tab_mnt_dir
ls
mv technology Configs/
c
ls
sudo rm Link\ to\ synch 
ls
cd sd
ls
cd Documents/
ls
cp peervpn-0-042.tar.gz $SW
sw
c
ls
cd Sources/
c
ls
tar zvxf peervpn-0-042.tar.gz -C ../codes/
c
ls
ls -d
c
cd ../codes/peervpn-0-042/
c
ls
make
c
ls
cp /home/hope/mnt_tab/sd/Documents/peervpn-0-042/peervpn.conf .
c
ls
./peervpn peervpn.conf 
sudo ./peervpn peervpn.conf 
vim peervpn.conf 
c
sudo ./peervpn peervpn.conf 
ebash
c
source ~/.bashrc
sudo ./peervpn peervpn.conf 
c
vim peervpn.conf 
c
sudo ./peervpn peervpn.conf 
c
vim peervpn.conf 
sudo ./peervpn peervpn.conf 
c
u
c
mysql -u root -p
c
v
c
work
c
ls
c
q
dl
ls
sw
ls
cd codes/
ls
vim download_cleaner.sh
c
sudo chmod 744 download_cleaner.sh 
ls
./download_cleaner.sh 
vim download_cleaner.sh
c
./download_cleaner.sh 
vim download_cleaner.sh
c
./download_cleaner.sh 
vim download_cleaner.sh
c
./download_cleaner.sh 
c'
c
ls
c
vim download_cleaner.sh
c
./download_cleaner.sh 
dls
dl
ls
c
p
vim download_cleaner.sh 
c
./download_cleaner.sh 
c
vim download_cleaner.sh 
q
mnt_tab
q
ping wprinter 
q
ping wpr
ping wprinter 
q
ssh noraa@wtab 
q
ls
git chechout -b Papers
git checkout -b Papers
ls
touch Effect_of_Pollution_on_Ghanaian
c
git add Effect_of_Pollution_on_Ghanaian 
c
git commit -m "Paper 2"
ls
c
ls
git checkout Office 
c
ls
c
ls
c
ls
q
c
ls
cp Mission_Statment_Analysis.txt /srv/ftp/ISSL/Files/
c
q
ebash
source .bashrc
q
w
q
